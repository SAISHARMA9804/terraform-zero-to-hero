resource "google_service_account" "myaccount" {
  account_id   = var.service_account_id
  display_name = var.display_name
  project       = var.project_name
}
resource "google_service_account_key" "mykey" {
  service_account_id = google_service_account.myaccount.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}