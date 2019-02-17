terraform {
  backend "gcs" {
    bucket = "msmini-tfstate"
    prefix = "microservices/XXXX/terraform.tfstate"
  }
}
