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