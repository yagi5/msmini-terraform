module "item-service" {
  // item service
  source = "../../modules"

  microservice_name = "item"

  microservice_admins = [
    "me@yagi5.com",
  ]
}
