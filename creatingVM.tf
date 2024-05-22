resource "google_compute_instance" "myvm" {
        name = "terraformcreation"
        zone = "us-east1-b"
        machine_type = "e2-medium"
        boot_disk {
            initialize_params {
                image = "ubuntu-os-cloud/ubuntu-2004-lts"
            }
        }

         network_interface {
                network = "default"
                 access_config {
                }
        }
}
