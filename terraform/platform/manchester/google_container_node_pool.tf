resource "google_container_node_pool" "manchester-n1-standard-1" {
  project = "${google_project.manchester.name}"
  name    = "manchester-n1-standard-1"
  cluster = "${google_container_cluster.manchester.name}"

  node_count = 3

  zone = "asia-northeast1-b"

  node_config {
    preemptible     = true
    image_type      = "COS"
    service_account = "default"
    machine_type    = "n1-standard-1"

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
    max_node_count = 3
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  depends_on = ["google_container_cluster.manchester"]
}

resource "google_container_node_pool" "manchester-f1-micro" {
  project = "${google_project.manchester.name}"
  name    = "manchester-f1-micro"
  cluster = "${google_container_cluster.manchester.name}"

  node_count = 1

  zone = "asia-northeast1-b"

  node_config {
    image_type      = "COS"
    service_account = "default"
    machine_type    = "f1-micro"

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
    max_node_count = 1
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  depends_on = ["google_container_cluster.manchester"]
}
