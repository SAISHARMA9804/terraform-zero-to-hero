resource "google_spanner_instance" "my_instance" {
  name = var.instance_name
  config = var.instance_config
  display_name = var.display_name
  node_count = var.node_count
}
resource "google_spanner_database" "my_database" {
  instance = google_spanner_instance.my_instance.name
  name = var.database_name
  ddl = [
    "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
    "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
  ]
  deletion_protection = false
}