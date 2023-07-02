output "ec2_instance_id" {
  value = aws_instance.app_server.id
}
output "ec2_availability_zone" {
  value = aws_instance.app_server.availability_zone
}
# ------- module/outputs.tf
output "public_ip" {
  value = aws_instance.app_server.public_ip
}

