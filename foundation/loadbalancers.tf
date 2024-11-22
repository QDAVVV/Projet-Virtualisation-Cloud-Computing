##--------------------Ressource Loadbalancers DEV--------------------------
resource "scaleway_lb_ip" "dev" {
  zone = "fr-par-1"
}
##--------------------LoadBalancer DEV--------------------------------------
resource "scaleway_lb" "dev" {
  ip_ids = [scaleway_lb_ip.dev.id]
  type   = "LB-S"
}



##--------------------Ressource Loadbalancers PROD--------------------------
resource "scaleway_lb_ip" "prod" {
  zone = "fr-par-1"
}
##--------------------LoadBalancer PROD-------------------------------------
resource "scaleway_lb" "prod" {
  ip_ids = [scaleway_lb_ip.prod.id]
  type   = "LB-S"
}