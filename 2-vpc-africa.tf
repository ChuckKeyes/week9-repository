

resource "google_compute_instance" "africa" {
    name = "africa"
    zone = "africa-south1-a"
    machine_type = "n2-standard-2"
  
    allow_stopping_for_update = true
    # tags = ["foo", "bar"]


    network_interface {
      network = "main"
      subnetwork = "johannesburg"
      access_config {
        // Ephemeral public IP
      }
      
    }

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"
        size = 30
      }
      auto_delete = false
      }
    # labels = {
    #     "env" = "africa-windows-vm"
    # }

    scheduling {
        preemptible = true
        automatic_restart = false
    }
    metadata_startup_script = file("./startup.sh")

}

