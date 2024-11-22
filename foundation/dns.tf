##--------------------DNS DEV--------------------------
resource "scaleway_domain_record" "dev" {
  dns_zone = "calculatrice-dev-david-polytech-dijon.kiowy.net"
  name     = "www"
  type     = "A"
  data     = scaleway_lb.dev.ip_address
  ttl      = 3600
}

##--------------------DNS PROD-------------------------
resource "scaleway_domain_record" "prod" {
  dns_zone = "calculatrice-david-polytech-dijon.kiowy.net"
  name     = "www"
  type     = "A"
  data     = scaleway_lb_ip.prod.ip_address
  ttl      = 3600
}

