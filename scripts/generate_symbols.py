#!/usr/bin/env python3
'''This script loads symbols into a special postgis table to be used for
customized symbol rendering and processing.

Based on get-external-data.py from OSM-Carto
'''

# inkscape --export-type="pdf" test9.svg
# ogr2ogr --config GDAL_PDF_DPI 96 --config OGR_PDF_READ_NON_STRUCTURED YES -f GeoJSON test16.geojson test16.pdf

import yaml
import os
import re
import argparse
import subprocess
import psycopg2
import lxml.etree

import logging


def generate_pdf(svg, name):

    inkscape_command = ['inkscape',
                        '--export-type=pdf', '--export-overwrite',
                        '--export-filename={}'.format(os.path.join('symbols/pdf', name + '.pdf')),
                        '{}'.format(svg)]

    try:
        subprocess.check_output(inkscape_command, stderr=subprocess.PIPE, universal_newlines=True)
    except subprocess.CalledProcessError as e:
        raise RuntimeError("inkscape error when converting symbol {}".format(name))

def svg_get_dimensions(svg):

    with open(svg, "rb") as f:
        xml = f.read()

    root = lxml.etree.fromstring(xml)

    return (int(root.attrib['width']), int(root.attrib['height']))


class Table:
    def __init__(self, conn, temp_schema, schema, symbols_table, srid):
        self._conn = conn
        self._temp_schema = temp_schema
        self._dst_schema = schema
        self._symbols_table = symbols_table
        with self._conn.cursor() as cur:
            cur.execute('''CREATE SCHEMA IF NOT EXISTS {temp_schema};'''
                        .format(temp_schema=self._temp_schema))
            cur.execute(('''DROP TABLE IF EXISTS "{schema}"."{symbols_table}";'''
                        ).format(schema=self._dst_schema, symbols_table=self._symbols_table))
            cur.execute(('''CREATE TABLE "{schema}"."{symbols_table}"'''
                         ''' ('''
                         '''   name text UNIQUE,'''
                         '''   feature_type text,'''
                         '''   width integer,'''
                         '''   height integer,'''
                         '''   symbol_size integer,'''
                         '''   leaf_type text,'''
                         '''   leaf_cycle text,'''
                         '''   way geometry(MULTIPOLYGON,{srid})'''
                         ''' );'''
                        ).format(schema=self._dst_schema, symbols_table=self._symbols_table, srid=srid))
            self._conn.commit()

    # Clean up the temporary table in preparation for loading
    def clean_temp(self, name):
        with self._conn.cursor() as cur:
            cur.execute('''DROP TABLE IF EXISTS "{temp_schema}"."{name}"'''
                        .format(temp_schema=self._temp_schema, name=name))
            self._conn.commit()

    def grant_access(self, user):
        with self._conn.cursor() as cur:
            cur.execute('''GRANT SELECT ON "{schema}"."{symbols_table}" TO "{user}";'''
                        .format(schema=self._dst_schema, symbols_table=self._symbols_table, user=user))
            self._conn.commit()

    # Add imported symbol from temporary table to symbols table and nuke the temporary table
    def add_symbol(self, name, width, height, ftype, size, leaf_type, leaf_cycle):
        with self._conn.cursor() as cur:
            cur.execute(('''INSERT INTO "{schema}"."{symbols_table}" '''
                         '''(name, width, height, feature_type, symbol_size, leaf_type, leaf_cycle, way) '''
                         '''SELECT '{name}' AS name, {width} AS width, {height} AS height, '''
                         '''  '{ftype}' AS feature_type, {size} AS symbol_size, {leaf_type} AS leaf_type, {leaf_cycle} AS leaf_cycle, '''
                         '''  ST_CollectionExtract(ST_Multi(way), 3) AS way FROM "{temp_schema}"."{name}"'''
                         '''  ON CONFLICT (name) DO UPDATE SET width = EXCLUDED.width, height = EXCLUDED.height, way = EXCLUDED.way, feature_type = EXCLUDED.feature_type,'''
                         '''                                   symbol_size = EXCLUDED.symbol_size, leaf_type = EXCLUDED.leaf_type, leaf_cycle = EXCLUDED.leaf_cycle;'''
                         )
                         .format(schema=self._dst_schema, symbols_table=self._symbols_table, temp_schema=self._temp_schema,
                                 name=name, width=width, height=height, ftype=ftype, size=size, leaf_type=leaf_type, leaf_cycle=leaf_cycle))

            cur.execute('''DROP TABLE IF EXISTS "{temp_schema}"."{name}"'''
                        .format(temp_schema=self._temp_schema, name=name))
            self._conn.commit()

    # Add imported symbol from temporary table to symbols table and nuke the temporary table, symbol is scaled to size
    def add_symbol_scaled(self, name, width, height, ftype, size, leaf_type, leaf_cycle):
        scale = float(size)/max(width, height)
        with self._conn.cursor() as cur:
            cur.execute(('''INSERT INTO "{schema}"."{symbols_table}" '''
                         '''(name, width, height, feature_type, symbol_size, leaf_type, leaf_cycle, way) '''
                         '''SELECT '{name}' AS name, {width} AS width, {height} AS height, '''
                         '''  '{ftype}' AS feature_type, {size} AS symbol_size, {leaf_type} AS leaf_type, {leaf_cycle} AS leaf_cycle, '''
                         '''  ST_Scale(ST_CollectionExtract(ST_Multi(way), 3), {scale}, {scale}) AS way FROM "{temp_schema}"."{name}"'''
                         '''  ON CONFLICT (name) DO UPDATE SET width = EXCLUDED.width, height = EXCLUDED.height, way = EXCLUDED.way, feature_type = EXCLUDED.feature_type,'''
                         '''                                   symbol_size = EXCLUDED.symbol_size, leaf_type = EXCLUDED.leaf_type, leaf_cycle = EXCLUDED.leaf_cycle;'''
                         )
                         .format(schema=self._dst_schema, symbols_table=self._symbols_table, temp_schema=self._temp_schema,
                                 name=name, width=round(scale*width), height=round(scale*height), ftype=ftype, size=size, scale=scale, leaf_type=leaf_type, leaf_cycle=leaf_cycle))

            cur.execute('''DROP TABLE IF EXISTS "{temp_schema}"."{name}"'''
                        .format(temp_schema=self._temp_schema, name=name))
            self._conn.commit()

    # Update symbol using SQL code
    def update_symbol(self, name, sql, width, height, scale, ftype):
        with self._conn.cursor() as cur:
            cur.execute(('''UPDATE "{schema}"."{symbols_table}" '''
                         '''SET way = ST_SetSRID(ST_CollectionExtract(ST_Multi(ST_Translate({sql}, width*0.5, height*0.5)), 3), ST_SRID(way)) '''
                         '''WHERE name = '{name}' AND feature_type = '{ftype}';'''
                         )
                         .format(schema=self._dst_schema, symbols_table=self._symbols_table,
                                 name=name,
                                 sql=sql.replace('!file!', ('ST_Translate(ST_SetSRID(ST_Scale(way, {scale}, {scale}), 0), -{width}*0.5, -{height}*0.5)').format(scale=1.0/scale, width=width, height=height))
                                        .replace('!file_scaled!', 'ST_Translate(ST_SetSRID(way, 0), -width*0.5, -height*0.5)'), ftype=ftype))
            self._conn.commit()

    # Generate symbol using SQL code
    def generate_symbol(self, name, sql, ftype, size, leaf_type, leaf_cycle):
        with self._conn.cursor() as cur:
            cur.execute(('''INSERT INTO "{schema}"."{symbols_table}" '''
                         '''(name, width, height, feature_type, symbol_size, leaf_type, leaf_cycle, way) '''
                         '''SELECT '{name}' AS name, ST_XMax(way)-ST_XMin(way) AS width, ST_YMax(way)-ST_YMin(way) AS height, '''
                         '''  '{ftype}' AS feature_type, {size} AS symbol_size, {leaf_type} AS leaf_type, {leaf_cycle} AS leaf_cycle, '''
                         '''  ST_CollectionExtract(ST_Multi(ST_Translate(way, -ST_XMin(way), -ST_YMin(way))), 3) AS way FROM (SELECT {sql} AS way) AS _'''
                         '''  ON CONFLICT (name) DO UPDATE SET width = EXCLUDED.width, height = EXCLUDED.height, way = EXCLUDED.way, feature_type = EXCLUDED.feature_type,'''
                         '''                                   symbol_size = EXCLUDED.symbol_size, leaf_type = EXCLUDED.leaf_type, leaf_cycle = EXCLUDED.leaf_cycle;'''
                         )
                         .format(schema=self._dst_schema, symbols_table=self._symbols_table,
                                 name=name, sql=sql, ftype=ftype, size=size, leaf_type=leaf_type, leaf_cycle=leaf_cycle))
            self._conn.commit()

def main():
    # parse options
    parser = argparse.ArgumentParser(
        description="Load symbols into database and process")

    parser.add_argument("-c", "--config", action="store", default="symbols.yml",
                        help="Name of configuration file (default symbols.yml)")

    parser.add_argument("-f", "--pdfgen", action="store_true",
                        help="Generate PDFs of symbols using inkscape only")

    parser.add_argument("-d", "--database", action="store",
                        help="Override database name to connect to")
    parser.add_argument("-H", "--host", action="store",
                        help="Override database server host or socket directory")
    parser.add_argument("-p", "--port", action="store",
                        help="Override database server port")
    parser.add_argument("-U", "--username", action="store",
                        help="Override database user name")
    parser.add_argument("-v", "--verbose", action="store_true",
                        help="Be more verbose. Overrides -q")
    parser.add_argument("-q", "--quiet", action="store_true",
                        help="Only report serious problems")
    parser.add_argument("-w", "--password", action="store",
                        help="Override database password")

    parser.add_argument("-R", "--renderuser", action="store",
                        help="User to grant access for rendering")

    opts = parser.parse_args()

    if opts.verbose:
        logging.basicConfig(level=logging.DEBUG)
    elif opts.quiet:
        logging.basicConfig(level=logging.WARNING)
    else:
        logging.basicConfig(level=logging.INFO)

    logging.info("Starting load of external data into database")

    with open(opts.config) as config_file:
        config = yaml.safe_load(config_file)

        # If the DB options are unspecified in both on the command line and in the
        # config file, libpq will pick what to use with the None
        database = opts.database or config["settings"].get("database")
        host = opts.host or config["settings"].get("host")
        port = opts.port or config["settings"].get("port")
        user = opts.username or config["settings"].get("username")
        password = opts.password or config["settings"].get("password")

        renderuser = opts.renderuser or config["settings"].get("renderuser")

        if not os.path.exists('symbols/pdf'):
            os.makedirs('symbols/pdf')

        if opts.pdfgen:

            logging.info("  Generating PDFs of symbols with inkscape")

            for name, symbol in config["symbols"].items():

                if "file" in symbol:
                    pdf = os.path.splitext(os.path.basename(symbol['file']))[0]
                    if os.path.exists(os.path.join('symbols/pdf', pdf + '.pdf')):
                        if os.path.getmtime(os.path.join("symbols", symbol['file'])) > os.path.getmtime(os.path.join('symbols/pdf', pdf + '.pdf')):
                            os.remove(os.path.join('symbols/pdf', pdf + '.pdf'))

                    logging.info("  Generating PDF for {}...".format(pdf))

                    generate_pdf(os.path.join("symbols", symbol['file']), pdf)

                    if not(os.path.exists(os.path.join('symbols/pdf', pdf + '.pdf'))):
                        logging.critical("PDF generation failed on {}".format(pdf))
                        raise RuntimeError("PDF generation error on {}".format(pdf))

            logging.info("  PDF generation complete")
            return 0

        conn = None
        conn = psycopg2.connect(database=database,
                         host=host, port=port,
                         user=user,
                         password=password)

        # DB setup
        symbols_table = Table(conn,
                              config["settings"]["temp_schema"],
                              config["settings"]["schema"],
                              config["settings"]["symbols_table"],
                              config["settings"]["srid"])

        for name, symbol in config["symbols"].items():
            logging.info("Checking symbol {}".format(name))
            # Don't attempt to handle strange names
            # Even if there was code to escape them properly here, you don't want
            # in a style with all the quoting headaches
            if not re.match('''^[a-zA-Z0-9_]+$''', name):
                raise RuntimeError(
                    "Only ASCII alphanumeric symbol are names supported")

            if "file" in symbol:
                if not(os.path.exists(os.path.join("symbols", symbol['file']))):
                    raise RuntimeError(
                        "SVG file {} could not be found".format(symbol['file']))

                (width, height) = svg_get_dimensions(os.path.join("symbols", symbol['file']))

                if width is None:
                    raise RuntimeError(
                        "Cound not read width attribute from SVG")

                if height is None:
                    raise RuntimeError(
                        "Cound not read height attribute from SVG")

                logging.info("  Symbol dimensions: {}x{}".format(width, height))

            if 'type' in symbol:
                ftype = symbol['type']
            else:
                raise RuntimeError(
                    "No feature type specified for symbol {}".format(name))

            if ('min-size' in symbol) and ('max-size' in symbol):
                min_size = symbol['min-size']
                max_size = symbol['max-size']
                if name.endswith('_'):
                    name_base = name
                else:
                    name_base = name.rsplit("_", 1)[0] + "_"
            elif 'size' in symbol:
                min_size = symbol['size']
                max_size = symbol['size']
                name_base = None
            elif width is not None:
                min_size = width
                max_size = width
                name_base = None

            if 'leaf_type' in symbol:
                leaf_type = "'{}'".format(symbol['leaf_type'])
            else:
                leaf_type = "NULL"

            if 'leaf_cycle' in symbol:
                leaf_cycle = "'{}'".format(symbol['leaf_cycle'])
            else:
                leaf_cycle = "NULL"

            symbol_scaled = False

            if 'scaled' in symbol:
                if symbol['scaled']:
                    symbol_scaled = True

            for size in range(min_size, max_size+1):

                if name_base is None:
                    name_real = name
                else:
                    name_real = name_base + str(size)

                symbols_table.clean_temp(name_real)

                if "file" in symbol:

                    ogrpg = "PG:dbname={}".format(database)

                    if port is not None:
                        ogrpg = ogrpg + " port={}".format(port)
                    if user is not None:
                        ogrpg = ogrpg + " user={}".format(user)
                    if host is not None:
                        ogrpg = ogrpg + " host={}".format(host)
                    if password is not None:
                        ogrpg = ogrpg + " password={}".format(password)

                    pdf = os.path.splitext(os.path.basename(symbol['file']))[0]

                    if os.path.exists(os.path.join('symbols/pdf', pdf + '.pdf')):
                        if os.path.getmtime(os.path.join("symbols", symbol['file'])) > os.path.getmtime(os.path.join('symbols/pdf', pdf + '.pdf')):
                            os.remove(os.path.join('symbols/pdf', pdf + '.pdf'))

                    if not(os.path.exists(os.path.join('symbols/pdf', pdf + '.pdf'))):

                        logging.info("  Generating PDF for {}...".format(pdf))

                        generate_pdf(os.path.join("symbols", symbol['file']), pdf)

                        if not(os.path.exists(os.path.join('symbols/pdf', pdf + '.pdf'))):
                            logging.critical("PDF generation failed on {}".format(pdf))
                            raise RuntimeError("PDF generation error on {}".format(pdf))

                    ogrcommand = ["ogr2ogr",
                                  '--config', 'GDAL_PDF_DPI', '96',
                                  '--config', 'OGR_PDF_READ_NON_STRUCTURED', 'YES',
                                  '-f', 'PostgreSQL',
                                  '-f', 'PostgreSQL',
                                  '-lco', 'GEOMETRY_NAME=way',
                                  '-lco', 'SPATIAL_INDEX=FALSE',
                                  '-lco', 'EXTRACT_SCHEMA_FROM_LAYER_NAME=YES',
                                  '-nln', "{}.{}".format(config["settings"]["temp_schema"], name_real)]

                    ogrcommand += [ogrpg, os.path.join('symbols/pdf', pdf + '.pdf')]

                    logging.info("  Importing {} from {} into database".format(name_real, pdf))
                    logging.debug("running {}".format(
                        subprocess.list2cmdline(ogrcommand)))

                    # ogr2ogr can raise errors here, so they need to be caught
                    try:
                        subprocess.check_output(
                            ogrcommand, stderr=subprocess.PIPE, universal_newlines=True)
                    except subprocess.CalledProcessError as e:
                        # Add more detail on stdout for the logs
                        logging.critical(
                            "ogr2ogr returned {} with symbol {}".format(e.returncode, name_real))
                        logging.critical("Command line was {}".format(
                            subprocess.list2cmdline(e.cmd)))
                        logging.critical("Output was\n{}".format(e.output))
                        raise RuntimeError(
                            "ogr2ogr error when loading symbol {}".format(name_real))

                    if symbol_scaled:
                        logging.info("  Adding {} scaled from {} to {}".format(name_real, max(width, height), size))
                        symbols_table.add_symbol_scaled(name_real, width, height, ftype, size, leaf_type, leaf_cycle)
                        scale = float(size)/max(width, height)
                    else:
                        logging.info("  Adding {} at size {}".format(name_real, size))
                        symbols_table.add_symbol(name_real, width, height, ftype, size, leaf_type, leaf_cycle)
                        scale = 1.0

                    if "sql" in symbol:
                        logging.info("  Modifying symbol {} with sql code (size {}, size_orig {}, scale factor {})".format(name_real, size, max(width, height), scale))
                        symbols_table.update_symbol(name_real, symbol['sql'].replace('!size!', str(size)).replace('!size_orig!', str(max(width, height))), width, height, scale, ftype)

                elif "sql" in symbol:
                    logging.info("  Generating {} from sql code".format(name_real))
                    symbols_table.generate_symbol(name_real, symbol['sql'].replace('!size!', str(size)).replace('!size_orig!', str(size)), ftype, size, leaf_type, leaf_cycle)

                else:
                    logging.info("  Ignoring symbol {} with neither file nor sql specified".format(name_real))

        logging.info("  Symbols import complete")

        #symbols_table.index()
        if renderuser is not None:
            symbols_table.grant_access(renderuser)

    if conn:
        conn.close()


if __name__ == '__main__':
    main()
