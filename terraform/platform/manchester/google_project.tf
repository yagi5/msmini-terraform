resource "google_project" "manchester" {
  // manchester is gke cluster pj
  name            = "manchester"
  project_id      = "msmini-manchester"
  billing_account = "${var.billing_account}"
  folder_id       = "folders/1080284529756"
  skip_delete     = false
}
