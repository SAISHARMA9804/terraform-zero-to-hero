resource "google_project" "project" {
  name = var.project_1_name
  project_id = var.project_1_id
  billing_account = var.billing_account

}

resource "google_project" "project1" {
  name = var.project_2_name
  project_id = var.project_2_id
  billing_account = var.billing_account
}