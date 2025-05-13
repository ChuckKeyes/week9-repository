resource "google_compute_subnetwork" "maryland" {
  name                     = "maryland"
  ip_cidr_range            = "10.10.7.0/24"
  region                   = "us-east1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

 resource "google_compute_subnetwork" "johannesburg" {
   name                     = "johannesburg"
   ip_cidr_range            = "10.10.50.0/24"
   region                   = "africa-south1"
   network                  = google_compute_network.main.id
   private_ip_google_access = true
 }


####  This is a different network....


resource "google_compute_subnetwork" "rio" {
  name                     = "rio"
  ip_cidr_range            = "10.10.100.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

 resource "google_compute_subnetwork" "santiago" {
   name                     = "santiago"
   ip_cidr_range            = "10.10.150.0/24"
   region                   = "southamerica-west1"
   network                  = google_compute_network.main.id
   private_ip_google_access = true
 }