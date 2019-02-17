module "item-service" {
  /* Do not modify */
  source = "../../modules"

  billing_account = "${var.billing_account}"

  /* Modifiable */
  microservice_name = "item"

  microservice_admins = [
    "me@yagi5.com",
  ]
}
