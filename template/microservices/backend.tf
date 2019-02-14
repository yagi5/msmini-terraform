terraform {
  backend "gcs" {
    bucket = "msmini-terraform-tfstate"
    prefix = "microservices/XXXX/terraform.tfstate"
  }
}
