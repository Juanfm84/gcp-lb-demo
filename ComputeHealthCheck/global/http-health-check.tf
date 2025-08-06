resource "google_compute_health_check" "http_health_check" {
  check_interval_sec = 5
  healthy_threshold  = 2

  http_health_check {
    port         = 80
    proxy_header = "NONE"
    request_path = "/"
  }

  name                = "http-health-check"
  project             = "loadbalancer-demo-468117"
  timeout_sec         = 5
  unhealthy_threshold = 2
}
# terraform import google_compute_health_check.http_health_check projects/loadbalancer-demo-468117/global/healthChecks/http-health-check
