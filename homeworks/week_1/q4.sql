SELECT 
    DATE(lpep_pickup_datetime) AS pickup, 
    MAX(trip_distance) AS max_trip_distance
FROM 
    green_taxi_trips
GROUP BY 
    DATE(lpep_pickup_datetime)
ORDER BY 
    max_trip_distance DESC
LIMIT 1;

-- "2019-10-31"	515.89
