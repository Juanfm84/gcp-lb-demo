resource "google_compute_subnetwork" "lb_subnet" {
  ip_cidr_range              = "10.0.0.0/24"
  name                       = "lb-subnet"
  network                    = "https://www.googleapis.com/compute/v1/projects/loadbalancer-demo-468117/global/networks/loadbalancer-vpc"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "loadbalancer-demo-468117"
  purpose                    = "PRIVATE"
  region                     = "us-west1"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.lb_subnet projects/loadbalancer-demo-468117/regions/us-west1/subnetworks/lb-subnet
