resource "google_container_cluster" "primary" {
  name     = "enterprise-gke"
  location = "us-central1"
  network  = "projects/demo/global/networks/vpc-main"
  subnetwork = "projects/demo/regions/us-central1/subnetworks/gke-subnet"

  workload_identity_config {
    workload_pool = "demo.svc.id.goog"
  }
}
