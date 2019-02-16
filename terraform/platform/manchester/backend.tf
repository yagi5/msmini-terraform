terraform {
  backend "gcs" {
    bucket = "msmini-terraform-tfstate"
    prefix = "microservices/manchester/terraform.tfstate"
  }
}
