resource "google_project" "manchester" {
  // manchester is gke cluster pj
  name        = "manchester"
  project_id  = "manchester"
  folder_id   = "folder/1080284529756"
  skip_delete = false
}
