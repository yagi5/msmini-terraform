provider "google" {
  credentials = "${file("/tmp/gcp-service-account.json")}"
  project     = "msmini-terraform"
  region      = "asia-northeast1"
  version     = "~> 1.12.0"
}

provider "kubernetes" {
  config_path    = "/msmini/kubeconfig"
  config_context = "gke_msmini-manchester_asia-northeast1-b_manchester"
  alias          = "k8s"
}
