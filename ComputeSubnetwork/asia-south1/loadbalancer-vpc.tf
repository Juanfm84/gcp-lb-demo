resource "google_compute_subnetwork" "loadbalancer_vpc" {
  ip_cidr_range              = "10.160.0.0/20"
  name                       = "loadbalancer-vpc"
  network                    = "https://www.googleapis.com/compute/v1/projects/loadbalancer-demo-468117/global/networks/loadbalancer-vpc"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "loadbalancer-demo-468117"
  purpose                    = "PRIVATE"
  region                     = "asia-south1"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.loadbalancer_vpc projects/loadbalancer-demo-468117/regions/asia-south1/subnetworks/loadbalancer-vpc
