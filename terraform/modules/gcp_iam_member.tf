/***********************************
* 
* GCP Project IAM Member
* https://www.terraform.io/docs/providers/google/r/google_project.html
* 
***********************************/

resource "google_project_iam_member" "microservice_service_admins" {
  count      = "${length(var.microservice_admins)}"
  depends_on = ["google_project.microservice"]
  project    = "${google_project.microservice.project_id}"
  role       = "roles/editor"
  member     = "user:${element(var.microservice_admins, count.index)}"
}
