SELECT 
    gtt."PULocationID", 
    z."Zone" AS zone_name,
    SUM(gtt.total_amount) AS total_amount_sum
FROM 
    green_taxi_trips gtt
JOIN 
    zones z
ON 
    gtt."PULocationID" = z."LocationID"
WHERE 
    DATE(gtt.lpep_pickup_datetime) = '2019-10-18'
GROUP BY 
    gtt."PULocationID", z."Zone"
HAVING 
    SUM(gtt.total_amount) > 13000
ORDER BY 
    total_amount_sum DESC;

-- 74	"East Harlem North"	18686.680000000084
-- 75	"East Harlem South"	16797.260000000064
--  166	"Morningside Heights"	13029.790000000037

select * from public.zones

