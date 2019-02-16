terraform {
  backend "gcs" {
    bucket = "msmini-terraform-tfstate"
    prefix = "microservices/item/terraform.tfstate"
  }
}
