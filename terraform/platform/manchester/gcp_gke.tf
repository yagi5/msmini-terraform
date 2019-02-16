resource "google_container_cluster" "manchester" {
  // gke cluster
  project            = "${google_project.manchester.name}"
  name               = "manchester"
  initial_node_count = 0
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

resource "google_container_node_pool" "manchester-n1-standard-4" {
  project = "${google_project.manchester.name}"
  name    = "manchester-n1-standard-4"
  cluster = "${google_container_cluster.manchester.name}"
  version = "1.11.6-gke.11"

  initial_node_count = 1

  zone = "asia-northeast1-b"

  node_config {
    image_type      = "COS"
    disk_size_gb    = "32"
    service_account = "default"
    machine_type    = "n1-standard-4"

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud.useraccounts.readonly",
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/devstorage.read_write",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/monitoring.write",
      "https://www.googleapis.com/auth/pubsub",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
    ]
  }

  autoscaling {
    min_node_count = 1
    max_node_count = 10
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  depends_on = ["google_container_cluster.manchester"]
}
