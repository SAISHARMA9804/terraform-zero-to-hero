resource "google_project_iam_custom_role" "my-custom-role" {
  role_id     = "myCustomRole"
  title       = "My Custom Role"
  description = "A description"
  permissions = ["roles/iam.serviceAccountCreator", "iam.roles.get"]
  project     =  "Terraform"

}