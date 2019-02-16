module "item-service" {
  source = "../../modules"

  microservice_name = "item"

  microservice_admins = [
    "ygnmhdtt@gmail.com",
  ]
}
