variable "project1_id" {
  type = string
  description = "ID of the first Project where the resources will be created"
}
variable "project2_id" {
  type = string
  description = "ID of the second Project where the resources will be created"
}
variable "vpc_1_name" {
  type = string
  description = "Name of the first VPC"
}
variable "vpc_2_name" {
  description = "Name of the second VPC"
}
variable "subnet_1_name" {
  description = "Name of the first subnet"
}
variable "subnet_1_region" {
  description = "Region in which first subnet is to be created"
}
variable "subnet_2_region" {
  description = "Region in which second subnet is to be created"
}
variable "subnet_1_cidr" {
  description = "CIDR block for the first subnet"
}
variable "subnet_2_name" {
  description = "Name of the second subnet"
}
variable "subnet_2_cidr" {
  description = "CIDR block for the second subnet"
}
variable "router1_name" {
  description = "Name of the router in first project"
}
variable "router1_asn" {
  description = "You can use any private ASN within these specified ranges (64512 - 65534, 4200000000 - 4294967294)"
}
variable "router2_asn" {
  description = "You can use any private ASN within these specified ranges (64512 - 65534, 4200000000 - 4294967294)"
}
variable "router2_name" {
  description = "Name of the router in second project"
}
variable "gateway1_name" {
  description = "Name of the vpn gateway in first project(VPN gateway name must be lowercase letters, numbers and hyphens)"
}
variable "gateway_region" {
  description = "Region where the gateways will be created"
}
variable "gateway2_name" {
  description = "Name of the gateway in Second project(VPN gateway name must be lowercase letters, numbers and hyphens)"
}
variable "tunnel1_name" {
  description = "Name of the first tunnel in first project"
}
variable "tunnel2_name" {
  description = "Name of the second tunnel in first project"
}
variable "tunnel3_name" {
  description = "Name of first tunnel in Second project"
}
variable "tunnel4_name" {
  description = "Name of the second tunnel in Second project"
}
variable "tunnel_1_secret_message" {
  description = "Secret message of the first tunnel in first project"
}
variable "tunnel_2_secret_message" {
  description = "Secret message of the Second tunnel in first project"
}
variable "tunnel_3_secret_message" {
  description = "Secret message of the first tunnel in Second project"
}
variable "tunnel_4_secret_message" {
  description = "Name of the Second tunnel in Second project"
}
variable "router1-interface1" {
  description = "Name of the first interface in first router"
}
variable "bgp_iprange_r1_interface1" {
  description = "Local IP range(BGP) of the first interface in first router for example 169.254.0.1/30"
}
variable "router1-interface2" {
  description = "Name of the second interface in first router"
}
variable "bgp_iprange_r1_interface2" {
  description = "Local IP range(BGP) of the second interface in first router for example 169.254.0.5/30"
}
variable "router2-interface1" {
  description = "Name of the first interface in Second router"
}
variable "bgp_iprange_r2_interface1" {
  description = "Local IP range(BGP) of the first interface in second router for example 169.254.0.2/30"
}
variable "router2-interface2" {
  description = "Name of the second interface in second router"
}
variable "bgp_iprange_r2_interface2" {
  description = "Local IP range(BGP) of the second interface in second router for example 169.254.0.6/30"
}
variable "router1-peer1" {
  description = "Name of the peer in first interface for first router"
}
variable "bgp_iprange_r1_peer1" {
  description = "Local IP range(BGP) of the peer for first interface in first router"
}
variable "router2-peer1" {
  description = "Name of the peer in first interface for second router"
}
variable "bgp_iprange_r2_peer1" {
  description = "Local IP range(BGP) of the peer for first interface in second router"
}
variable "router1-peer2" {
  description = "Name of the peer in second interface for first router"
}
variable "bgp_iprange_r1_peer2" {
  description = "Local IP range(BGP) of the peer for second interface in first router"
}
variable "router2-peer2" {
  description = "Name of the peer in second interface for second router"
}
variable "bgp_iprange_r2_peer2" {
  description = "Local IP range(BGP) of the peer for second interface in second router"
}
variable "project_1_name" {
    type = string
    description = "Name of the first project"
}
variable "project_2_name" {
    type = string
    description = "Name of the second project"
}
variable "project_1_id" {
    type = string
    description = "ID of the first project"
}
variable "project_2_id" {
    type = string
    description = "ID of the second project"
}
variable "billing_account" {
    type = string
    description = "ID of the billing account"
}
variable service_account_id {
  type = string
}
variable display_name {
 type = string
}
variable project_name {
 type = string
}
variable "bucket_name" {
  description = "name of the bucket"
  type = string
}
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
variable "project_id" {
  description = "GCP Project ID"
  type = string
}
variable "database_id" {
  description = "Firestore database ID"
  type = string
}
variable "project_id" {
  description = "GCP Project ID"
}
variable "region" {
  description = "Cloud Spanner region"
}
variable "instance_name" {
  description = "Cloud Spanner instance name"
}
variable "instance_config" {
  description = "Cloud Spanner instance configuration"
}
variable "display_name" {
  description = "Display name of Cloud Spanner instance"
}
variable "node_count" {
  description = "Number of nodes in the Cloud Spanner instance"
}
variable "database_name" {
  description = "Cloud Spanner database name"
}
variable "name" {
  description = "name of the dataproc cluster"
  type = string
}
variable "location" {
  description = "location of dataproc cluster"
  type = string
}
