resource "google_compute_instance" "myvm" {
        name = "terraformcreation-modifying"
        zone = "us-east1-b"
        machine_type = "e2-medium"
        boot_disk {
            initialize_params {
                image = "ubuntu-os-cloud/ubuntu-2004-lts"
                labels = {
                my_label = "value"
                }
            }
        }

         network_interface {
                network = "default"
                 access_config {
                }
        }
}
