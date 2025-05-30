# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_service

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network
resource "google_compute_network" "main" {
  name                            = "main"
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false
  mtu                             = 1460
  delete_default_routes_on_create = false
  
}

resource "google_compute_disk"  "disk-1"  {
  name = "disk-1"
  size = 15
  zone = "africa-south1-a"
  type = "pd-ssd"
}

# lifecycle {
#   ignore_changes = [
#     attached_disk
#   ]
# }

# resource "google_compute_attached_disk" "adisk" {
#   disk = google_compute_disk.disk-1.id
#   instance = google_compute_instance.vm-from-tf.id
# }


 resource "google_compute_network" "not-main" {
   name                            = "not-main"
   routing_mode                    = "REGIONAL"
   auto_create_subnetworks         = false
   mtu                             = 1460
   delete_default_routes_on_create = false

 }

#####################################################################################################

# data "google_compute_instance_group" "africa-windows" {
#     name = "[google_compute_instance.africa-windows.self_link]"
#     zone = "africa-south1-a"
# }



