resource "google_project_iam_member" "gcr_pusher_via_cloudbuild-cloudbuild.builds.builder" {
  project = "${google_project.manchester.name}"
  role    = "roles/cloudbuild.builds.builder"
  member  = "serviceAccount:gcr-pusher-via-cloudbuild@${google_project.manchester.name}.iam.gserviceaccount.com"

  depends_on = ["google_service_account.gcr_pusher_via_cloudbuild"]
}
