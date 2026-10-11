output "control_plane_ip_addresses_lookup_inbound" {
  description = "Map of inbound values across all control_plane_ip_addresses_lookup, keyed the same as var.control_plane_ip_addresses_lookup except keys with no inbound are omitted"
  value       = { for k, v in data.mongodbatlas_control_plane_ip_addresses.control_plane_ip_addresses_lookup : k => v.inbound if v.inbound != null && length(v.inbound) > 0 }
}
output "control_plane_ip_addresses_lookup_outbound" {
  description = "Map of outbound values across all control_plane_ip_addresses_lookup, keyed the same as var.control_plane_ip_addresses_lookup except keys with no outbound are omitted"
  value       = { for k, v in data.mongodbatlas_control_plane_ip_addresses.control_plane_ip_addresses_lookup : k => v.outbound if v.outbound != null && length(v.outbound) > 0 }
}

