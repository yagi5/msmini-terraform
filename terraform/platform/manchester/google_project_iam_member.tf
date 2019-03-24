resource "google_project_iam_member" "gcr_pusher_via_cloudbuild-cloudbuild_builds_builder" {
  project = "${google_project.manchester.name}"
  role    = "roles/cloudbuild.builds.builder"
  member  = "serviceAccount:${google_service_account.gcr_pusher_via_cloudbuild.email}"

  depends_on = ["google_service_account.gcr_pusher_via_cloudbuild"]
}

// https://www.spinnaker.io/setup/quickstart/halyard-gke/

resource "google_project_iam_member" "spinnaker_host-iam_serviceAccountKeyAdmin" {
  project = "${google_project.manchester.name}"
  role    = "roles/iam.serviceAccountKeyAdmin"
  member  = "serviceAccount:spinnaker-host@msmini-spinnaker.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "spinnaker_host-container_admin" {
  project = "${google_project.manchester.name}"
  role    = "roles/container.admin"
  member  = "serviceAccount:spinnaker-host@msmini-spinnaker.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "spinnaker_deploy-storage_admin" {
  project = "${google_project.manchester.name}"
  role    = "roles/storage.admin"
  member  = "serviceAccount:spinnaker-deploy@msmini-spinnaker.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "spinnaker_deploy-browser" {
  project = "${google_project.manchester.name}"
  role    = "roles/browser"
  member  = "serviceAccount:spinnaker-deploy@msmini-spinnaker.iam.gserviceaccount.com"
}
