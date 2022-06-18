terraform {
  cloud {
    organization = "evolutioniq"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "google" {}


module "bucket" {
  source     = "./modules/gcs"
  project_id = "eiq-sandbox"
  prefix     = "cavila"
  name       = "gh-actions-demo"
  location   = "US"
}
