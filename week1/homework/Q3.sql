SELECT CAST(lpep_pickup_datetime AS DATE) AS "day", COUNT(1)
FROM trip_data_19
WHERE CAST(lpep_pickup_datetime AS DATE) = CAST(lpep_dropoff_datetime AS DATE) AND CAST(lpep_dropoff_datetime AS DATE) = '2019-01-15'
GROUP BY CAST(lpep_pickup_datetime AS DATE)