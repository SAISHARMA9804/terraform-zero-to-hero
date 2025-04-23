resource "google_project_service" "firestore" {
  service = "firestore.googleapis.com"
}
resource "google_firestore_database" "database" {
  project = var.project_id
  name = var.database_id
}