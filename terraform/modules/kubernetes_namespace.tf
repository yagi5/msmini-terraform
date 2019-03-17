/***********************************
* 
* Kubernetes namespace
* https://www.terraform.io/docs/providers/kubernetes/r/namespace.html
* 
***********************************/

resource "kubernetes_namespace" "microservice" {
  metadata {
    name = "${local.service_id_prefix}-${var.microservice_name}"
  }
}
