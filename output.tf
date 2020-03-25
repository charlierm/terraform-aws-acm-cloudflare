output "arn" {
  description = "Arn of generated certificate to be used on Cloudfronts,ALBs,etc..."
  value = aws_acm_certificate_validation.default.certificate_arn
}