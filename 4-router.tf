# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "usrouter" {
  name    = "usrouter"
  region  = "us-east1"
  network = google_compute_network.main.id
}


# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "sarouter" {
  name    = "sarouter"
  region  = "southamerica-east1"
  network = google_compute_network.main.id
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "africa-router" {
  name    = "africa-router"
  region  = "africa-south1"
  network = google_compute_network.main.id
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "sarouter-west" {
  name    = "sarouter-west"
  region  = "southamerica-west1"
  network = google_compute_network.main.id
}