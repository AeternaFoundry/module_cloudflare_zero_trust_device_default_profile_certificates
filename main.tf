resource "cloudflare_zero_trust_device_default_profile_certificates" "zero_trust_device_default_profile_certificates" {
  for_each = var.zero_trust_device_default_profile_certificates

  enabled = each.value.enabled
  zone_id = each.value.zone_id
}

