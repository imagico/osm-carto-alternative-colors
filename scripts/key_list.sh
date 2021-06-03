#!/bin/sh

KEYS_HSTORE=`cat project.mml | grep "tags" | sed "s?tags?\ntags?g;s?[ ]*->[ ]*?@?g;s?[ ]*@>[ ]*?@?g;s?[ ]*\?[ ]*?@?g" | grep "tags@" | sed "s?tags@'\([^']*\)'.*?\1?;s?=>.*??;s?\"??g" | sort | uniq`
KEYS_COLUMN=`cat openstreetmap-carto.style | sed "s? [ ]*? ?g" | grep -v "^#" | cut -d " " -f 2 | grep -v "way_area" | grep -v "z_order"`
KEYS_OTHER="
area
type
"

KEYS="$KEYS_COLUMN
$KEYS_HSTORE
$KEYS_OTHER"

if [ "$1" = "taginfo" ] ; then

	DATE=`date -u +"%Y%m%dT%H%M%SZ"`

	echo "{
    \"data_format\": 1,
    \"data_url\": \"https://raw.githubusercontent.com/imagico/osm-carto-alternative-colors/master/taginfo.json\",
    \"data_updated\": \"$DATE\",
    \"project\": {
        \"name\": \"Alternative colors map style\",
        \"description\": \"OSM-Carto fork with additional features and different development paradigm\",
        \"project_url\": \"https://github.com/imagico/osm-carto-alternative-colors\",
        \"doc_url\": \"https://github.com/imagico/osm-carto-alternative-colors/blob/master/README.md\",
        \"icon_url\": \"https://raw.githubusercontent.com/imagico/osm-carto-alternative-colors/master/doc/icon.png\",
        \"contact_name\": \"Christoph Hormann\",
        \"contact_email\": \"chris_hormann@gmx.de\"
    },
    \"tags\": ["

	for KEY in `echo "$KEYS" | sort` ; do
		echo "        { \"key\": \"$KEY\" }"
	done

	echo "    ]
}"

else

	# plain sorted key list
	for KEY in `echo "$KEYS" | sort` ; do
		echo "$KEY"
	done

fi