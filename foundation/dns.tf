##--------------------DNS DEV--------------------------
resource "scaleway_domain_record" "dev" {
  dns_zone = "calculatrice-dev-david-polytech-dijon.kiowy.net"
  name     = "www"
  type     = "A"
  data     = "1.2.3.4"
  ttl      = 3600
}

##--------------------DNS PROD-------------------------
resource "scaleway_domain_record" "prod" {
  dns_zone = "calculatrice-david-polytech-dijon.kiowy.net"
  name     = "www"
  type     = "A"
  data     = "1.2.3.4"
  ttl      = 3600
}

