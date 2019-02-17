terraform {
  backend "gcs" {
    bucket = "msmini-tfstate"
    prefix = "microservices/manchester/terraform.tfstate"
  }
}
