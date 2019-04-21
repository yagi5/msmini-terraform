resource "google_container_cluster" "manchester" {
  project     = "${google_project.manchester.name}"
  name        = "manchester"
  description = ""

  remove_default_node_pool = true
  initial_node_count       = 0

  zone = "asia-northeast1-b"

  additional_zones = [
    "asia-northeast1-a",
    "asia-northeast1-c",
  ]

  maintenance_policy {
    daily_maintenance_window {
      start_time = "06:00"
    }
  }

  addons_config {
    network_policy_config {
      disabled = true
    }
  }

  cluster_ipv4_cidr = "10.0.0.0/16"
  subnetwork        = ""

  logging_service    = "logging.googleapis.com"
  monitoring_service = "monitoring.googleapis.com"

  enable_kubernetes_alpha = false
  enable_legacy_abac      = true

  depends_on = ["google_project.manchester"]
}
