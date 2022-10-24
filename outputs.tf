output "lb_dns_name" {
  value = aws_lb.app.dns_name
}

output "public_blue_ec2_ips" {
  value = [
    for instance in aws_instance.blue :  join("", ["http://", instance.public_ip])
  ]
}