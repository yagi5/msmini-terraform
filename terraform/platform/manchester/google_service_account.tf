resource "google_service_account" "gcr_pusher_via_cloudbuild" {
  project      = "${google_project.manchester.name}"
  account_id   = "gcr-pusher-via-cloudbuild"
  display_name = "gcr-pusher-via-cloudbuild"
}
