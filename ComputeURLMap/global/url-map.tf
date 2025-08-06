resource "google_compute_url_map" "url_map" {
  default_service = "https://www.googleapis.com/compute/v1/projects/loadbalancer-demo-468117/global/backendServices/backend-service"
  name            = "url-map"
  project         = "loadbalancer-demo-468117"
}
# terraform import google_compute_url_map.url_map projects/loadbalancer-demo-468117/global/urlMaps/url-map
