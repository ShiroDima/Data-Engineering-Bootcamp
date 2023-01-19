SELECT
	"Zone",
	MAX(tip_amount) as "max_tip"
FROM
	trip_data_19 as trip JOIN zones as z
	ON trip."DOLocationID" = z."LocationID"
WHERE
	"PULocationID" = 7
GROUP BY
	"Zone",
	tip_amount
ORDER BY
	"max_tip" DESC