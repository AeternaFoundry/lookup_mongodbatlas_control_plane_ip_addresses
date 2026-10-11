data "mongodbatlas_control_plane_ip_addresses" "control_plane_ip_addresses_lookup" {
  for_each = var.control_plane_ip_addresses_lookup

}

