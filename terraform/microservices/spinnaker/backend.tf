terraform {
  backend "gcs" {
    bucket = "msmini-tfstate"
    prefix = "microservices/spinnaker/terraform.tfstate"
  }
}
