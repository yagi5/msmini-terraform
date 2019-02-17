variable "microservice_name" {
  description = "Name of the service"
}

variable "microservice_admins" {
  description = "Admin members of the microservice"

  type    = "list"
  default = []
}

variable "billing_account" {
  description = "billing account"
}
