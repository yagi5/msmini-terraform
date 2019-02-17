resource "google_project" "manchester" {
  name        = "manchester"
  project_id  = "manchester"
  folder_id   = "folder/1080284529756"
  skip_delete = false
}
