variable "service_name" {
  description = "Name of the service"
}

variable "service_admins" {
  description = "Admin members of the microservice"

  type    = "list"
  default = []
}
