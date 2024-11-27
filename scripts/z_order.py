#!/usr/bin/env python3
# ---------------------------------------------------------------------------
#  z_order.py
#
#  Generates syl code for z_order table.
#
#  Copyright 2024 by Christoph Hormann <chris_hormann@gmx.de>
# ---------------------------------------------------------------------------
#  This file is part of the OSM-Carto alternative colors map style.
#
#  OSM-Carto alternative colors is an open design and free software project
#  You can use, modify and/or redistribute it under the terms of the
#  following licenses:
#
#  Design components of the project are subject to the Creative Commons
#  Attribution ShareAlike 4.0 (CC BY-SA 4.0) License.
#
#  Software components of the project are subject to the GNU Affero General
#  Public License published by the Free Software Foundation, either
#  version 3 of the License, or (at your option) any later version.
#
#  OSM-Carto alternative colors is distributed in the hope that it will be
#  useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero
#  General Public License and the Creative Commons Attribution ShareAlike
#  4.0 (CC BY-SA 4.0) License for more details.
#
#  You should have received a copy of the Creative Commons Attribution
#  ShareAlike 4.0 (CC BY-SA 4.0) License along with OSM-Carto alternative
#  colors. If not, see
#  <https://creativecommons.org/licenses/by-sa/4.0/legalcode>.
#
#  You should have also received a copy of the GNU Affero General Public
#  License. If not, see <https://www.gnu.org/licenses/>.
# ---------------------------------------------------------------------------

import argparse
import sys
import yaml
import os

from collections import OrderedDict, namedtuple


def load_settings(config_file):
    """Read the settings from YAML."""
    return yaml.safe_load(open(config_file, 'r'))


def main():
    parser = argparse.ArgumentParser(description='Generates z_order table')

    parser.add_argument("-c", "--config", action="store", default="z_order.yaml",
                        help="Name of configuration file (default z_order.yaml)")

    opts = parser.parse_args()

    config = load_settings(opts.config)

    settings = config['settings']
    features = config['features']

    if 'table' in settings:
        table_name = settings['table']
    else:
        table_name = 'carto_z_order'

    print('-- These is the z_order table for roads rendering in OpenStreetMap Carto Alternative Colors.')
    print('-- This file is generated with {}'.format(' '.join(sys.argv)))

    print('DROP TABLE IF EXISTS "{}";'.format(table_name))
    print('CREATE TABLE "{}"'.format(table_name))
    print('  (feature TEXT PRIMARY KEY, z_order INTEGER);')

    print('INSERT INTO "{}" (feature, z_order) VALUES'.format(table_name))

    rows = []

    for feature, z_order in features.items():
        rows.append('(\'{}\', {})'.format(feature, z_order))

    print('  {};'.format(",\n  ".join(rows)))

if __name__ == "__main__":
    main()
