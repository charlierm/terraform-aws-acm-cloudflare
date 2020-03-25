variable "domain_name" {
  type        = string
  description = "Primary certificate domain name"
}

variable "subject_alternative_names" {
  default     = []
  type        = list(string)
  description = "Subject alternative domain names"
}

variable "validation_record_ttl" {
  default     = 60
  type        = number
  description = "Cloudflare time-to-live for validation records"
}

variable "allow_validation_record_overwrite" {
  default     = true
  type        = bool
  description = "Allow Cloudflare record creation to overwrite existing records"
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the ACM certificate"
}

variable "region" {
  default = ""
}

# Configure the Cloudflare Provider
variable "cf_email" {}

variable "cf_api_key" {}

