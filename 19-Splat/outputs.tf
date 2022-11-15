output "publicip" {
  value = aws_instance.test[*].public_ip
}

output "publicip1" {
  value = aws_instance.test[0].public_ip
}