variable "control_plane_ip_addresses_lookup" {
  description = <<EOT
Map of control_plane_ip_addresses_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

