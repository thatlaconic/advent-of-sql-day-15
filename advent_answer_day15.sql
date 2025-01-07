
SELECT timestamp, place_name, coordinate AS location
FROM sleigh_locations
JOIN areas ON ST_contains(ST_AsText(polygon)::geometry,ST_AsText(coordinate)::geometry);



