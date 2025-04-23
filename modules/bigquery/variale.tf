variable "dataset_id" {
  type = string
  description = "The ID of the BigQuery dataset to be created."
  default = "karthik"
}
variable "project_id" {
  description = "Big Query"
  type        = string
  default = "bamboo-medium-381213"
}
variable "default_partition_expiration_ms" {
  type = number
  default = "25000"
  
}
variable "location" {
  type        = string
  default = "us-central1"
}
variable "table_id" {
  type        = string
  default = "karthi"
  description = "The ID of the first BigQuery table to be created."
}
variable "display_name" {
  type = string
}
variable "var.region" {
  type = string
}
variable "data_source_id" {
  type        = string
}
variable "schedule" {
  type        = string
}
variable "params" {
  type        = string
}

//Direct values for biq query


variable "display_name" {
  type = string
  default = "GCS to BQ"
}
variable "data_source_id" {
  type        = string
  default = "karthi"
}
variable "schedule" {
  type        = string
  default = "2 * * * *"
}
variable "params" {
  type        = map(any)
  default = {
    destination_table_name_template = "my_table"
    write_disposition               = "WRITE_APPEND"
    query                           = "SELECT name FROM tabl WHERE x = 'y'"
  }
}