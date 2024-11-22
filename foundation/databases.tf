##-------------------Ressource BDD---------------------
resource "scaleway_rdb_instance" "main" {
  name           = "rdb"
  node_type      = "DB-DEV-S"
  engine         = "PostgreSQL-15"
  is_ha_cluster  = true
  disable_backup = true
  user_name      = "my_initial_user"
  password       = "thiZ_is_v&ry_s3cret"
}



##--------------------BDD DEV--------------------------
resource "scaleway_rdb_database" "dev" {
  instance_id = scaleway_rdb_instance.main.id
  name        = "BDD-DEV"
}



##--------------------BDD PROD-------------------------
resource "scaleway_rdb_database" "prod" {
  instance_id = scaleway_rdb_instance.main.id
  name        = "BDD-PROD"
}