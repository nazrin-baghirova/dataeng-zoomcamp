SELECT 
    z_do."Zone" AS zone_name,
    MAX(gtt.tip_amount) AS max_tip_amount
FROM 
    green_taxi_trips gtt
JOIN 
    zones z_pu ON gtt."PULocationID" = z_pu."LocationID"
JOIN 
    zones z_do ON gtt."DOLocationID" = z_do."LocationID"
WHERE 
    z_pu."Zone" = 'East Harlem North'
    AND DATE(gtt.lpep_pickup_datetime) BETWEEN '2019-10-01' AND '2019-10-31'
GROUP BY 
    z_do."Zone"
ORDER BY 
    largest_tip DESC
LIMIT 1;


-- "JFK Airport"	87.3