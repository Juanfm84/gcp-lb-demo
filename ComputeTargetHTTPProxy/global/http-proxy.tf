resource "google_compute_target_http_proxy" "http_proxy" {
  name    = "http-proxy"
  project = "loadbalancer-demo-468117"
  url_map = "https://www.googleapis.com/compute/v1/projects/loadbalancer-demo-468117/global/urlMaps/url-map"
}
# terraform import google_compute_target_http_proxy.http_proxy projects/loadbalancer-demo-468117/global/targetHttpProxies/http-proxy
