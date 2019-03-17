module "XXXX-service" {
  source = "../../modules"

  billing_account = "${var.billing_account}"

  microservice_name = "XXXX"

  microservice_admins = [
    "me@yagi5.com",
  ]
}
