variable "instance_name" {
  description = "The display name for the Bigtable instance."
  type = string
}
variable "cluster_id" {
  description = "The ID to assign to the Bigtable cluster."
  type = string
}
variable "zone" {
  description = "The zone in which to create the Bigtable cluster."
  type = string
}
variable "serve_nodes" {
  description = "The number of Bigtable nodes to serve the cluster."
  type = number
}
variable "storage_type" {
  description = "The storage type to use for the cluster (e.g., SSD or HDD)."
  type = string
}
variable "bigtable_name" {
  description = "The display name for the Bigtable instance."
  type = string
}