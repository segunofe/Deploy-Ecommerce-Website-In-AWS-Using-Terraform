output "load_balancer_dns" {
  value = aws_lb.application_load_balancer.dns_name
}


# website URL
# output "website_url" {
  # value = join("", ["https://", var.record_name, ".", var.domain_name])
# }
