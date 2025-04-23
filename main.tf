terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.73.2"
    }
  }
}
provider "google" {
}
module "network" {
    source = "./modules/network"
}
module "project" {
    source = "./modules/projects"
    name = var.project_1_name
    project_id = var.project_1_id
    billing_account = var.billing_account
}
module "service accounts" {
    source = "./modules/service accounts"
}
module "cloudstorage" {
    source = "./modules/cloudstorage"
}
module "cloudsql" {
    source = "./modules/cloudsql"
}
module "cloudbigtable" {
    source = "./modules/cloudbigtable"
}
module "bigquery" {
    source = "./modules/bigquery"
}
module "cloudfirestore" {
    source = "./modules/cloudfirestore"
}
module "cloudspanner" {
    source = "./modules/cloudspanner"
}
module "dataproc" {
    source = "./modules/dataproc"
}