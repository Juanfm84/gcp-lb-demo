resource "google_compute_firewall" "allow_http" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "allow-http"
  network       = "https://www.googleapis.com/compute/v1/projects/loadbalancer-demo-468117/global/networks/loadbalancer-vpc"
  priority      = 1000
  project       = "loadbalancer-demo-468117"
  source_ranges = ["0.0.0.0/0"]
}
# terraform import google_compute_firewall.allow_http projects/loadbalancer-demo-468117/global/firewalls/allow-http
