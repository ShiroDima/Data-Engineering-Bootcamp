locals {
    data_lake_bucket = "dtc_data_lake"
}

variable "project" {
    description = "dtc-375022"
}

variable "region" {
    description = "Region for GCP resources."
    default = "europe-west2"
    type = string
}

variable "storage_class" {
    description = "Storage class type for my bucket."
    default = "STANDARD"
}

variable "BQ_DATASET" {
    description = "BigQuery Dataset that raw data (from GCS) will be written to."
    type = string
    default = "trips_data_all"
}

