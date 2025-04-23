resource "google_sql_database_instance" "sql_db" {
  depends_on = [
    var.subnet2
  ]
  name = var.db_instance
  database_version = var.db_version
  region       = var.region
  settings {
    tier = var.db_machine_type

 

     ip_configuration {
                ipv4_enabled = true
                require_ssl  = false

                authorized_networks {
                    name  = var.authorized_network_name
                    // value = var.static_ip_wp
                    value = var.authorized_network_cidr_range
         }
      }
   }
   deletion_protection  = "false"
}