# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "week9-keyes-bucket"
    prefix = "terraform/state"
    credentials = "theowafclass65chuckkeyes-479605ff29ed.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
