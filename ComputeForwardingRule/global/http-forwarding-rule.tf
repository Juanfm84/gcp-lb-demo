resource "google_compute_global_forwarding_rule" "http_forwarding_rule" {
  ip_address            = "34.160.190.109"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "http-forwarding-rule"
  port_range            = "80-80"
  project               = "loadbalancer-demo-468117"
  target                = "https://www.googleapis.com/compute/beta/projects/loadbalancer-demo-468117/global/targetHttpProxies/http-proxy"
}
# terraform import google_compute_global_forwarding_rule.http_forwarding_rule projects/loadbalancer-demo-468117/global/forwardingRules/http-forwarding-rule
