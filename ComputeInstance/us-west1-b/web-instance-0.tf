resource "google_compute_instance" "web_instance_0" {
  boot_disk {
    auto_delete = true
    device_name = "persistent-disk-0"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-12-bookworm-v20250709"
      size  = 10
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/loadbalancer-demo-468117/zones/us-west1-b/disks/web-instance-0"
  }

  labels = {
    goog-terraform-provisioned = "true"
  }

  machine_type = "e2-micro"

  metadata = {
    startup-script = "#!/bin/bash\napt-get update\napt-get install -y nginx\necho \"Hello from $(hostname)\" > /var/www/html/index.htm\n"
  }

  name = "web-instance-0"

  network_interface {
    access_config {
      nat_ip       = "34.83.238.165"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/loadbalancer-demo-468117/global/networks/loadbalancer-vpc"
    network_ip         = "10.0.0.3"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/loadbalancer-demo-468117/regions/us-west1/subnetworks/lb-subnet"
    subnetwork_project = "loadbalancer-demo-468117"
  }

  project = "loadbalancer-demo-468117"

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  zone = "us-west1-b"
}
# terraform import google_compute_instance.web_instance_0 projects/loadbalancer-demo-468117/zones/us-west1-b/instances/web-instance-0
