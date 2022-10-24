output "lb_dns_name" {
  value = "http://${aws_lb.app.dns_name}"
}

output "public_blue_ec2_ips" {
  value = [
    for instance in aws_instance.blue :  join("", ["http://", instance.public_ip])
  ]
}

output "public_green_ec2_ips" {
  value = [
    for instance in aws_instance.green :  join("", ["http://", instance.public_ip])
  ]
}