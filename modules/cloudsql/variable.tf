variable "db_instance" {
  description = "The name of the SQL instance"
  type = string
}
variable "db_version" {
  description = "The DB version of the SQL instance"
  type = string
}
variable "region" {
  description = "The region to host the cluster"
  type = string
}
variable "db_machine_type" {
  description = "The machine type of the SQL instance"
  type = string
}
variable "authorized_network_cidr_range" {
  description = "The authorized_network_cidr_range for accessing SQL DB"
  type = string
}
variable "authorized_network_name" {
  description = "The authorized_network_name for accessing SQL DB"
  type = string
}
variable "subnet2" {
  description = "The subnetwork created for the SQL server"
  type = string
}