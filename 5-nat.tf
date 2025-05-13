# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "nat" {
  name   = "nat"
  router = google_compute_router.usrouter.name
  region = "us-east1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"


# Add the name for one of your subnetwork.
  subnetwork {
    name                    = google_compute_subnetwork.maryland.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.nat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "nat" {
  name         = "nat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "us-east1"

}

##############################################################################################################

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "sarouter" {
  name   = "sarouter"
  router = google_compute_router.sarouter.name
  region = "southamerica-east1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"


# Add the name for one of your subnetwork.
  subnetwork {
    name                    = google_compute_subnetwork.rio.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.sa-nat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "sa-nat" {
  name         = "sa-nat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "southamerica-east1"
}

##############################################################################################################


# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "africa-router" {
  name   = "africa-router"
  router = google_compute_router.africa-router.name
  region = "africa-south1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"


# Add the name for one of your subnetwork.
  subnetwork {
    name                    = google_compute_subnetwork.johannesburg.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.africa-nat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "africa-nat" {
  name         = "africa-nat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "africa-south1"
}

#########################################################################################################

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "sarouter-west" {
  name   = "sarouter-west"
  router = google_compute_router.sarouter-west.name
  region = "southamerica-west1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"


# Add the name for one of your subnetwork.
  subnetwork {
    name                    = google_compute_subnetwork.santiago.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.santiago-nat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "santiago-nat" {
  name         = "santiago-nat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "southamerica-west1"
}