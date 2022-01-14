curl 'http://www.mski.fi/geoserver/mski/wfs' \
  -H 'Content-Type: application/xml' \
  --data-raw '<wfs:GetFeature xmlns:wfs="http://www.opengis.net/wfs" service="WFS" version="1.1.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/wfs http://schemas.opengis.net/wfs/1.1.0/wfs.xsd"><wfs:Query typeName="mski:tampere_luistelukentat" srsName="EPSG:3067"><ogc:Filter xmlns:ogc="http://www.opengis.net/ogc"><ogc:BBOX><ogc:PropertyName>the_geom</ogc:PropertyName><gml:Envelope xmlns:gml="http://www.opengis.net/gml" srsName="EPSG:3067"><gml:lowerCorner>298180.81481587 6796105.335284</gml:lowerCorner><gml:upperCorner>356740.81481587 6848777.335284</gml:upperCorner></gml:Envelope></ogc:BBOX></ogc:Filter></wfs:Query></wfs:GetFeature>' \
  -o wfs
