output "zero_trust_device_default_profile_certificates_enabled" {
  description = "Map of enabled values across all zero_trust_device_default_profile_certificates, keyed the same as var.zero_trust_device_default_profile_certificates except keys with no enabled are omitted"
  value       = { for k, v in cloudflare_zero_trust_device_default_profile_certificates.zero_trust_device_default_profile_certificates : k => v.enabled if v.enabled != null }
}
output "zero_trust_device_default_profile_certificates_zone_id" {
  description = "Map of zone_id values across all zero_trust_device_default_profile_certificates, keyed the same as var.zero_trust_device_default_profile_certificates except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_zero_trust_device_default_profile_certificates.zero_trust_device_default_profile_certificates : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

