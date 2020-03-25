locals {
  zone_id = lookup(data.cloudflare_zones.selected_zone.zones[0], "id")
  subject_alternative_names = ["*.${var.domain_name}"]
}

data "cloudflare_zones" "selected_zone" {
  filter {
   name   = var.domain_name
  }
}

resource "aws_acm_certificate" "default" {
  domain_name               = var.domain_name
  subject_alternative_names = local.subject_alternative_names
  validation_method         = "DNS"

  lifecycle {
    create_before_destroy = true
  }

  tags = merge(
  {
    Name = var.domain_name
  },
  var.tags,
  )
}

resource "cloudflare_record" "validation" {
  # todo support to alternates domains names
  count    = length(local.subject_alternative_names)

  zone_id = local.zone_id
  name   = aws_acm_certificate.default.domain_validation_options[count.index]["resource_record_name"]
  type   = aws_acm_certificate.default.domain_validation_options[count.index]["resource_record_type"]
  value  = trimsuffix(aws_acm_certificate.default.domain_validation_options[count.index]["resource_record_value"], ".")
}

resource "aws_acm_certificate_validation" "default" {
  certificate_arn = aws_acm_certificate.default.arn

  validation_record_fqdns = cloudflare_record.validation.*.hostname
}