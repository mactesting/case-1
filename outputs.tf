output "alb_dns_name" {
  value = aws_lb.this.dns_name
}

output "app_url" {
  description = "HTTP URL via ALB"
  value       = "http://${aws_lb.this.dns_name}"
}

# output "route53_record" {
#   value = aws_route53_record.app.fqdn
# }
