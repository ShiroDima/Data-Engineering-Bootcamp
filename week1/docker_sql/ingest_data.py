import sqlalchemy as sqla
import pandas as pd


def main(file_path:str, table_name:str) -> None:
    engine = sqla.create_engine("postgresql://root:root@localhost:5000/ny_taxi")
    df = pd.read_csv(file_path, low_memory=False)
    engine.connect()

    if "trip" in file_path and "2021" in file_path:
        df.tpep_pickup_datetime = pd.to_datetime(df.tpep_pickup_datetime)
        df.tpep_dropoff_datetime = pd.to_datetime(df.tpep_dropoff_datetime)
    if "trip" in file_path and "2019" in file_path:
        df.lpep_pickup_datetime = pd.to_datetime(df.lpep_pickup_datetime)
        df.lpep_dropoff_datetime = pd.to_datetime(df.lpep_dropoff_datetime)
    df.to_sql(name=table_name, index=False, con=engine, if_exists="replace", chunksize=100000, method="multi")
    print("[INFO] Table added to the database")


if __name__ == "__main__":
    main(file_path="../data/green_tripdata_2019-01.csv", table_name="trip_data_19")

