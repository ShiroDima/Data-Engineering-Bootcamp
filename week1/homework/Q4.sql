SELECT 
	CAST(lpep_pickup_datetime AS DATE) AS "day",
	MAX(trip_distance) AS "max_distance"
FROM 
	trip_data_19
GROUP BY
	CAST(lpep_pickup_datetime AS DATE)
ORDER BY
	"max_distance" DESC