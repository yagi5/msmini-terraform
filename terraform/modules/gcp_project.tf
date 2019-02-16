/***********************************
* 
* GCP Project 
* https://www.terraform.io/docs/providers/google/r/google_project.html
* 
***********************************/

resource "google_project" "microservice" {
  name        = "${join("-", compact(list(local.service_id_prefix, var.microservice_name)))}"
  project_id  = "${join("-", compact(list(local.service_id_prefix, var.microservice_name)))}"
  skip_delete = false
}
