resource "aws_instance" "app_server" {
  ami             = var.ami
  instance_type   = var.instance_type
  vpc_security_group_ids = [var.sg]
  key_name        = "devops.Mouad"
  
  tags = {
    Name = "${var.tag_name}instance"
  }
 

  provisioner "remote-exec" {
  inline = [
    "sudo apt update",
    "sudo apt install -y nginx",
    "sudo systemctl start nginx"
  ]



   connection {
     type        = "ssh"
     user        = "ubuntu"
     private_key = file("C:/Users/Mouad FAIT/Downloads/devops.Mouad.pem")
     host        = self.public_ip
   }
  }

  root_block_device {
    delete_on_termination = true
  }
}



