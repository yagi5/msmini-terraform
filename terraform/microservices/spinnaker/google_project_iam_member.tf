// https://www.spinnaker.io/setup/quickstart/halyard-gke/

resource "google_project_iam_member" "spinnaker_host-iam_serviceAccountKeyAdmin" {
  project    = "msmini-spinnaker"
  role       = "roles/iam.serviceAccountKeyAdmin"
  member     = "serviceAccount:${google_service_account.spinnaker_host.email}"
  depends_on = ["google_service_account.spinnaker_host"]
}

resource "google_project_iam_member" "spinnaker_host-container_admin" {
  project    = "msmini-spinnaker"
  role       = "roles/container.admin"
  member     = "serviceAccount:${google_service_account.spinnaker_host.email}"
  depends_on = ["google_service_account.spinnaker_host"]
}

resource "google_project_iam_member" "spinnaker_deploy-storage_admin" {
  project    = "msmini-spinnaker"
  role       = "roles/storage.admin"
  member     = "serviceAccount:${google_service_account.spinnaker_deploy.email}"
  depends_on = ["google_service_account.spinnaker_deploy"]
}

resource "google_project_iam_member" "spinnaker_deploy-browser" {
  project    = "msmini-spinnaker"
  role       = "roles/browser"
  member     = "serviceAccount:${google_service_account.spinnaker_deploy.email}"
  depends_on = ["google_service_account.spinnaker_deploy"]
}
