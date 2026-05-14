terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials)
  project     = "db"
  region      = "US"
}

resource "google_bigquery_dataset" "nytaxi" {
  dataset_id = "nytaxi"
  location   = "US"
}