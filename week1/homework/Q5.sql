SELECT 
	CAST(lpep_dropoff_datetime AS DATE) AS "day",
	passenger_count,
	COUNT(passenger_count) AS "count"
FROM 
	trip_data_19
WHERE
	(passenger_count=2 OR passenger_count=3) AND
	CAST(lpep_dropoff_datetime AS DATE) = '2019-01-01'
GROUP BY
	CAST(lpep_dropoff_datetime AS DATE),
	passenger_count