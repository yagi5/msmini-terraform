resource "google_project" "manchester" {
  name        = "manchester"
  project_id  = "manchester"
  folder_id   = "${data.google_folder.msmini.name}"
  skip_delete = false
}
