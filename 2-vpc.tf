# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_service

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network
resource "google_compute_network" "main" {
  name                            = "main"
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false
  mtu                             = 1460
  delete_default_routes_on_create = false

}


# resource "google_compute_network" "main2" {
#   name                            = "main2"
#   routing_mode                    = "REGIONAL"
#   auto_create_subnetworks         = false
#   mtu                             = 1460
#   delete_default_routes_on_create = false

# }

# resource "google_compute_network" "main3" {
#   name                            = "main3"
#   routing_mode                    = "REGIONAL"
#   auto_create_subnetworks         = false
#   mtu                             = 1460
#   delete_default_routes_on_create = false

# }

# resource "google_compute_network" "main4" {
#   name                            = "main4"
#   routing_mode                    = "REGIONAL"
#   auto_create_subnetworks         = false
#   mtu                             = 1460
#   delete_default_routes_on_create = false

# }

