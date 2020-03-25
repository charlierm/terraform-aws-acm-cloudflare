provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

provider "cloudflare" {
  version = "~> 2.0"
  email   = var.cf_email
  api_key = var.cf_api_key
}