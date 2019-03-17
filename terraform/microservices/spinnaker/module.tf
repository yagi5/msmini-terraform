module "spinnaker-service" {
  source = "../../modules"

  billing_account = "${var.billing_account}"

  microservice_name = "spinnaker"

  microservice_admins = [
    "me@yagi5.com",
  ]
}
