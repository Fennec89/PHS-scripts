#!/bin/bash
infile=$1
out=$2

begin="<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<kml xmlns=\"http://www.opengis.net/kml/2.2\">\n\t<Document>\n\t<Placemark>\n\t\t<name>Path</name>\n\t\t<LineString>\n\t\t\t<coordinates>"
end="\t\t\t</coordinates>\n\t\t</LineString>\n\t</Placemark>\n\t</Document>\n</kml>"
echo -e ${begin} > ${out}

lat=`cat gps.log | cut -d',' -f2`
lng=`cat gps.log | cut -d',' -f4`

for ((i=1;i<55;i++))
do
	tlat=$(echo ${lat} | cut -d' ' -f${i})
	tlng=$(echo ${lng} | cut -d' ' -f${i})
	echo "${tlng},${tlat} " >> ${out}
done
echo -e ${end} >> ${out}

