provider "google" {
  credentials = "${file("/tmp/gcp-service-account.json")}"
  project     = "msmini-terraform"
  region      = "asia-northeast1"
  version     = "~> 1.12.0"
}
