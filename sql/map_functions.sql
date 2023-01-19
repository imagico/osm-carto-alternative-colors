/*--------------------------------------------------------------------------
  map_functions.sql

  SQL helper functions for rendering

  Install with: psql -d gis -f sql/map_functions.sql

  Copyright 2021-2023 by Christoph Hormann <chris_hormann@gmx.de>
 ---------------------------------------------------------------------------
  This file is part of the OSM-Carto alternative colors map style.

  OSM-Carto alternative colors is an open design and free software project
  You can use, modify and/or redistribute it under the terms of the
  following licenses:

  Design components of the project are subject to the Creative Commons
  Attribution ShareAlike 4.0 (CC BY-SA 4.0) License.

  Software components of the project are subject to the GNU Affero General
  Public License published by the Free Software Foundation, either
  version 3 of the License, or (at your option) any later version.

  OSM-Carto alternative colors is distributed in the hope that it will be
  useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero
  General Public License and the Creative Commons Attribution ShareAlike
  4.0 (CC BY-SA 4.0) License for more details.

  You should have received a copy of the Creative Commons Attribution
  ShareAlike 4.0 (CC BY-SA 4.0) License along with OSM-Carto alternative
  colors. If not, see
  <https://creativecommons.org/licenses/by-sa/4.0/legalcode>.

  You should have also received a copy of the GNU Affero General Public
  License. If not, see <https://www.gnu.org/licenses/>.
 -------------------------------------------------------------------------*/

/* Function to determine the local scale factor of the map at a certain place, */
/* that is the size of one map unit in real world units                        */
CREATE OR REPLACE FUNCTION scale_factor (geometry)
  returns numeric
  language sql
  immutable
  returns NULL ON NULL input
AS $func$
SELECT ST_DistanceSphere(ST_Transform(ST_Translate(geom, 0, 1), 4326), ST_Transform(geom, 4326))::numeric FROM (SELECT ST_Centroid($1) AS geom) AS p
$func$;

/* Returns the (non-integer) zoom level matching a certain pixel size   */
/* Used to translate a way_pixels threshold into a zoom level threshold */
/* with zoom_from_pixelsize(SQRT(way_area/way_pixels_threshold))        */
CREATE OR REPLACE FUNCTION zoom_from_pixelsize (numeric)
  returns numeric
  language sql
  immutable
  returns NULL ON NULL input
AS $func$
SELECT log(2,(2.0*PI()::numeric*6378137.0/256)/$1)
$func$;
