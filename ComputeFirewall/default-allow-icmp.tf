resource "google_compute_firewall" "default_allow_icmp" {
  allow {
    protocol = "icmp"
  }

  description   = "Allow ICMP from anywhere"
  direction     = "INGRESS"
  name          = "default-allow-icmp"
  network       = "https://www.googleapis.com/compute/v1/projects/loadbalancer-demo-468117/global/networks/default"
  priority      = 65534
  project       = "loadbalancer-demo-468117"
  source_ranges = ["0.0.0.0/0"]
}
# terraform import google_compute_firewall.default_allow_icmp projects/loadbalancer-demo-468117/global/firewalls/default-allow-icmp
