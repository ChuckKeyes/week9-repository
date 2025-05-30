resource "google_compute_instance" "rio" {
  name                      = "rio"
  zone                      = "southamerica-east1-b"
  machine_type              = "n2-standard-2"
  #instances   = [google_compute_instance.rio.self_link]
  allow_stopping_for_update = true

  network_interface {
    network    = "main"
    subnetwork = "rio"
    access_config {}
  }

  boot_disk {
    initialize_params {
     # image = "debian-cloud/debian-12"
      image = "windows-server-2022-dc-core-v20250514"
      size  = 40
    }
      auto_delete = true
   }

  # labels = {
  #   env = "rio-vm"
  # }

  # scheduling {
  #   preemptible        = true
  #   automatic_restart  = false
  # }

  # metadata_startup_script = file("./startup2.sh")
}
