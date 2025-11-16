provider "google" {
  region = "europe-west1"
}

terraform {
  required_version = "1.13.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.11.0"
    }
  }
}
