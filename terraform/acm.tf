
# Import an existing certificate on ACM to Terraform

data "aws_acm_certificate" "existing" {
  domain   = var.domain_name
  statuses = ["ISSUED"]
  most_recent = true
}



# Create a new certificate 
# ACM certificate
# resource "aws_acm_certificate" "acm_certificate" {
#   domain_name               = #
#   subject_alternative_names = #
#   validation_method         = #

#   lifecycle {
#     create_before_destroy = #
#   }
# }

# # Route 53 hosted zone
# data "aws_route53_zone" "hosted_zone" {
#   name         = #
#   private_zone = #
# }

# # DNS records for ACM validation
# resource "aws_route53_record" "route53_record" {
#   for_each = {
#     for dvo in aws_acm_certificate.acm_certificate.domain_validation_options : dvo.domain_name => {
#       name   = dvo.resource_record_name
#       record = dvo.resource_record_value
#       type   = dvo.resource_record_type
#     }
#   }

#   allow_overwrite = #
#   name            = #
#   records         = #
#   ttl             = #
#   type            = #
#   zone_id         = #
# }

# # Validate ACM certificate
# resource "aws_acm_certificate_validation" "acm_certificate_validation" {
#   certificate_arn         = #
#   validation_record_fqdns = #
# }
