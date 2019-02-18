resource "google_container_cluster" "manchester" {
  project            = "${google_project.manchester.name}"
  name               = "manchester"
  initial_node_count = 1
  description        = ""

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

  network_policy {
    provider = "CALICO"
    enabled  = true
  }

  cluster_ipv4_cidr = "10.0.0.0/16"

  logging_service    = "logging.googleapis.com"
  monitoring_service = "monitoring.googleapis.com"

  enable_kubernetes_alpha = false
  enable_legacy_abac      = true

  depends_on = ["google_project.manchester"]
}
