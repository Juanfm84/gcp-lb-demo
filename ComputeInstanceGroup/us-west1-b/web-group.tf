resource "google_compute_instance_group" "web_group" {
  instances = ["https://www.googleapis.com/compute/beta/projects/loadbalancer-demo-468117/zones/us-west1-b/instances/web-instance-0", "https://www.googleapis.com/compute/beta/projects/loadbalancer-demo-468117/zones/us-west1-b/instances/web-instance-1"]
  name      = "web-group"

  named_port {
    name = "http"
    port = 80
  }

  network = "https://www.googleapis.com/compute/beta/projects/loadbalancer-demo-468117/global/networks/loadbalancer-vpc"
  project = "loadbalancer-demo-468117"
  zone    = "us-west1-b"
}
# terraform import google_compute_instance_group.web_group projects/loadbalancer-demo-468117/zones/us-west1-b/instanceGroups/web-group
