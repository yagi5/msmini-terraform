module "item-service" {
  source = "../../modules"

  billing_account = "${var.billing_account}"

  microservice_name = "item"

  microservice_admins = [
    "me@yagi5.com",
  ]
}
