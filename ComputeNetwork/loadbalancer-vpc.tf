resource "google_compute_network" "loadbalancer_vpc" {
  auto_create_subnetworks = true
  name                    = "loadbalancer-vpc"
  project                 = "loadbalancer-demo-468117"
  routing_mode            = "REGIONAL"
}
# terraform import google_compute_network.loadbalancer_vpc projects/loadbalancer-demo-468117/global/networks/loadbalancer-vpc
