output "publicip" {
  value = aws_instance.web.public_ip
}

output "publicdns" {
  value = aws_instance.web.public_dns
}

output "privateip" {
  value = aws_instance.web.private_ip
}

output "privatedns" {
  value = aws_instance.web.private_dns
}