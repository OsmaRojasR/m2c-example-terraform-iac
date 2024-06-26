resource "google_compute_firewall" "allow-ssh" {
  name = "${var.network_name}-allow-ssh"
  network = var.network

  allow {
    protocol = "tcp"
    ports = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-sql" {
  name = "${var.network_name}-allow-sql"
  network = var.network

  allow {
    protocol = "tcp"
    ports = ["1433"]
  }

  source_ranges = ["0.0.0.0/0"]
}