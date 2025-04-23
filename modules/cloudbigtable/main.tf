resource "google_bigtable_instance" "bigtable_instance" {
  name = var.instance_name
  cluster {
    name           = var.cluster_id
    zone           = var.zone
    serve_nodes    = var.serve_nodes
    default_storage_type = var.storage_type
  }
  lifecycle {
    prevent_destroy = true
  }
}
resource "google_bigtable_table" "table" {
  name          = var.bigtable_name
  instance_name = google_bigtable_instance.instance.name
  split_keys    = ["a", "b", "c"]
  lifecycle {
    prevent_destroy = true
  }
  column_family {
    family = "family-first"
  }
  column_family {
    family = "family-second"
  }
}