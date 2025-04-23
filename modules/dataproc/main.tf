resource "google_dataproc_cluster" "simplecluster" {
  name   = var.name
  region = var.region
}