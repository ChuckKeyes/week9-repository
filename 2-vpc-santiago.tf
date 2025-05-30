resource "google_compute_instance" "santiago" {
  name                      = "santiago"
  zone                      = "southamerica-west1-b"
  machine_type              = "n2-standard-2"
  #instances   = [google_compute_instance.santiago.self_link]
  allow_stopping_for_update = true

  network_interface {
    network    = "main"
    subnetwork = "santiago"
    access_config {}
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      size  = 30
    }
    auto_delete = false
  }

  labels = {
    env = "santiago-vm"
  }

  scheduling {
    preemptible        = true
    automatic_restart  = false
  }

  metadata_startup_script = file("./startup3.sh")
}
