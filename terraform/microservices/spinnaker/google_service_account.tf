resource "google_service_account" "spinnaker_host" {
  account_id   = "spinnaker-host"
  display_name = "spinnaker host"
  project      = "msmini-spinnaker"
}

resource "google_service_account" "spinnaker_deploy" {
  account_id   = "spinnaker-deploy"
  display_name = "spinnaker deploy"
  project      = "msmini-spinnaker"
}
