resource "google_project_iam_member" "gcr_pusher_via_cloudbuild-cloudbuild_builds_builder" {
  project = "${google_project.manchester.name}"
  role    = "roles/cloudbuild.builds.builder"
  member  = "serviceAccount:${google_service_account.gcr_pusher_via_cloudbuild.email}"

  depends_on = ["google_service_account.gcr_pusher_via_cloudbuild"]
}
