resource "google_compute_backend_service" "backend_service" {
  connection_draining_timeout_sec = 300
  health_checks                   = ["https://www.googleapis.com/compute/v1/projects/loadbalancer-demo-468117/global/healthChecks/http-health-check"]
  load_balancing_scheme           = "EXTERNAL"
  name                            = "backend-service"
  port_name                       = "http"
  project                         = "loadbalancer-demo-468117"
  protocol                        = "HTTP"
  session_affinity                = "NONE"
  timeout_sec                     = 10
}
# terraform import google_compute_backend_service.backend_service projects/loadbalancer-demo-468117/global/backendServices/backend-service
