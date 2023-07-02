# public_ip/main.tf

resource "aws_eip" "eip" {
  domain                = "vpc"
  instance           = var.ec2_instance_id
  depends_on         = [var.ec2_instance_id]

  lifecycle {
    create_before_destroy = true
  }
}

output "ip_address" {
  value = aws_eip.eip.public_ip
}

output "allocation_id" {
  value = aws_eip.eip.id
}

resource "null_resource" "record_public_ip" {
  provisioner "local-exec" {
    command = "echo IP publique: ${aws_eip.eip.public_ip} > ip_ec2-projet.txt"

  }

  depends_on = [aws_eip.eip]
}
