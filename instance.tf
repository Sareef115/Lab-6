resource "google_compute_instance" "terraform" {
  project      = "lab2-6510110115-405809"
  name         = "terraform"
  machine_type = "e2-medium"
  zone         = "asia-southeast1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}