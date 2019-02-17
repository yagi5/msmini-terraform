terraform {
  backend "gcs" {
    bucket = "msmini-tfstate"
    prefix = "microservices/item/terraform.tfstate"
  }
}
