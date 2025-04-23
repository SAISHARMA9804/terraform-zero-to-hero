#create two VPCs
resource "google_compute_network" "vpc_1" {
  name                    = var.vpc_1_name
  auto_create_subnetworks = false
  project                 = var.project1_id
}

resource "google_compute_network" "vpc_2" {
  name                    = var.vpc_2_name
  auto_create_subnetworks = false
  project                 = var.project2_id
}

# Create two subnets
resource "google_compute_subnetwork" "subnet_1" {
  name          = var.subnet_1_name
  network       = google_compute_network.vpc_1.self_link
  ip_cidr_range = var.subnet_1_cidr
  region        = var.subnet_1_region
  project       = var.project1_id
}

resource "google_compute_subnetwork" "subnet_2" {
  name          = var.subnet_2_name
  network       = google_compute_network.vpc_2.self_link
  ip_cidr_range = var.subnet_2_cidr
  region        = var.subnet_2_region
  project       = var.project2_id
}


# [START cloudvpn_ha_gcp_to_gcp]
resource "google_compute_ha_vpn_gateway" "ha_gateway1" {
  region  = var.gateway_region
  name    = var.gateway1_name
  network = google_compute_network.vpc_1.id
  project       = var.project1_id
}

resource "google_compute_ha_vpn_gateway" "ha_gateway2" {
  region  = var.gateway_region
  name    = var.gateway2_name
  network = google_compute_network.vpc_2.id
  project       = var.project2_id
}


resource "google_compute_router" "router1" {
  name    = var.router1_name
  network = google_compute_network.vpc_1.name
  region  = var.gateway_region
  project       = var.project1_id
  bgp {
    asn = var.router1_asn
  }
}

resource "google_compute_router" "router2" {
  name    = var.router2_name
  network = google_compute_network.vpc_2.name
  region  = var.gateway_region
  project       = var.project2_id
  bgp {
    asn = var.router2_asn
  }
}

resource "google_compute_vpn_tunnel" "tunnel1" {
  name                  = var.tunnel1_name
  region                = var.gateway_region
  project       = var.project1_id
  vpn_gateway           = google_compute_ha_vpn_gateway.ha_gateway1.id
  peer_gcp_gateway      = google_compute_ha_vpn_gateway.ha_gateway2.id
  shared_secret         = var.tunnel_1_secret_message
  router                = google_compute_router.router1.id
  vpn_gateway_interface = 0
}

resource "google_compute_vpn_tunnel" "tunnel2" {
  name                  = var.tunnel2_name
  region                = var.gateway_region
  project       = var.project1_id
  vpn_gateway           = google_compute_ha_vpn_gateway.ha_gateway1.id
  peer_gcp_gateway      = google_compute_ha_vpn_gateway.ha_gateway2.id
  shared_secret         = var.tunnel_2_secret_message
  router                = google_compute_router.router1.id
  vpn_gateway_interface = 1
}

resource "google_compute_vpn_tunnel" "tunnel3" {
  name                  = var.tunnel3_name
  region                = var.gateway_region
  project                 = var.project2_id
  vpn_gateway           = google_compute_ha_vpn_gateway.ha_gateway2.id
  peer_gcp_gateway      = google_compute_ha_vpn_gateway.ha_gateway1.id
  shared_secret         = var.tunnel_3_secret_message
  router                = google_compute_router.router2.id
  vpn_gateway_interface = 0
}

resource "google_compute_vpn_tunnel" "tunnel4" {
  name                  = var.tunnel4_name
  region                = var.gateway_region
  project                = var.project2_id
  vpn_gateway           = google_compute_ha_vpn_gateway.ha_gateway2.id
  peer_gcp_gateway      = google_compute_ha_vpn_gateway.ha_gateway1.id
  shared_secret         = var.tunnel_4_secret_message
  router                = google_compute_router.router2.id
  vpn_gateway_interface = 1
}

resource "google_compute_router_interface" "router1_interface1" {
  name       = var.router1-interface1
  project       = var.project1_id
  router     = google_compute_router.router1.name
  region     = var.gateway_region
  ip_range   = var.bgp_iprange_r1_interface1
  vpn_tunnel = google_compute_vpn_tunnel.tunnel1.name
}

resource "google_compute_router_peer" "router1_peer1" {
  name                      = var.router1-peer1
  project       = var.project1_id
  router                    = google_compute_router.router1.name
  region                    = var.gateway_region
  peer_ip_address           = var.bgp_iprange_r1_peer1
  peer_asn                  = var.router2_asn
  interface                 = google_compute_router_interface.router1_interface1.name
}

resource "google_compute_router_interface" "router1_interface2" {
  name       = var.router1-interface2
  project       = var.project1_id
  router     = google_compute_router.router1.name
  region     = var.gateway_region
  ip_range   = var.bgp_iprange_r1_interface2
  vpn_tunnel = google_compute_vpn_tunnel.tunnel2.name
}

resource "google_compute_router_peer" "router1_peer2" {
  name                      = var.router1-peer2
  project       = var.project1_id
  router                    = google_compute_router.router1.name
  region                    = var.gateway_region
  peer_ip_address           = var.bgp_iprange_r1_peer2
  peer_asn                  = var.router2_asn
  interface                 = google_compute_router_interface.router1_interface2.name
}

resource "google_compute_router_interface" "router2_interface1" {
  name       = var.router2-interface1
  project       = var.project2_id
  router     = google_compute_router.router2.name
  region     = var.gateway_region
  ip_range   = var.bgp_iprange_r2_interface1
  vpn_tunnel = google_compute_vpn_tunnel.tunnel3.name
}

resource "google_compute_router_peer" "router2_peer1" {
  name                      = var.router2-peer1
  project       = var.project2_id
  router                    = google_compute_router.router2.name
  region                    = var.gateway_region
  peer_ip_address           = var.bgp_iprange_r2_peer1
  peer_asn                  = var.router1_asn
  interface                 = google_compute_router_interface.router2_interface1.name
}

resource "google_compute_router_interface" "router2_interface2" {
  name       = var.router2-interface2
  project       = var.project2_id
  router     = google_compute_router.router2.name
  region     = var.gateway_region
  ip_range   = var.bgp_iprange_r2_interface2
  vpn_tunnel = google_compute_vpn_tunnel.tunnel4.name
}

resource "google_compute_router_peer" "router2_peer2" {
  name                      = var.router2-peer2
  project       = var.project2_id
  router                    = google_compute_router.router2.name
  region                    = var.gateway_region
  peer_ip_address           = var.bgp_iprange_r2_peer2
  peer_asn                  = var.router1_asn
  interface                 = google_compute_router_interface.router2_interface2.name
}
