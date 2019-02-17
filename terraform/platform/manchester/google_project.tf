resource "google_project" "manchester" {
  name        = "manchester"
  project_id  = "manchester"
  folder_id   = "${google_folder.msmini.name}"
  skip_delete = false
}
