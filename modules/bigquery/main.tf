resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = var.dataset_id
  project                     = var.project_id
  description                 = "This is a test description"
  location                    = var.location
  default_partition_expiration_ms = var.default_partition_expiration_ms

  labels = {
    env = "default"
  }
}
resource "google_bigquery_table" "table" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = var.table_id
  project    = var.project_id

  time_partitioning {
    type = "DAY"
  }

  labels = {
    env = "default"
  }
  schema = <<EOF
[
  {
    "name": "permalink",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "The Permalink"
  },
  {
    "name": "state",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "State where the head office is located"
  }
]
EOF
}
resource "google_bigquery_data_transfer_config" "query_config" {
 
  display_name           = var.display_name
  location               = var.location
  data_source_id         = var.data_source_id
  schedule               = var.schedule
  destination_dataset_id = google_bigquery_dataset.dataset.dataset_id
  params = var.params
}