resource "google_storage_bucket_iam_member" "gcr_pusher_via_cloudbuild-gcr_artifacts_storage_object_viewer" {
  bucket = "artifacts.${google_project.manchester.project_id}.appspot.com"
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.gcr_pusher_via_cloudbuild.email}"
}

resource "google_storage_bucket_iam_member" "gcr_pusher_via_cloudbuild-gcr_log_storage_object_viewer" {
  bucket = "${google_project.manchester.project_id}_cloudbuild"
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.gcr_pusher_via_cloudbuild.email}"
}
