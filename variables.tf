variable "zero_trust_device_default_profile_certificates" {
  description = <<EOT
Map of zero_trust_device_default_profile_certificates, attributes below
Required:
    - enabled
    - zone_id
EOT

  type = map(object({
    enabled = bool
    zone_id = string
  }))
}

