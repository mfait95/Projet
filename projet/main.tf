provider "aws" {
  region     = "us-east-1"
  access_key = "XXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXXX"
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = "ami-053b0d53c279acc90"
  instance_type ="t2.micro"
  volume_size   = var.volume_size
  tag_name      = "MiniProjet"
  sg            = module.security_group.webserver_sg

}

module "ebs_volume" {
  source      = "./modules/ebs_volume"
  volume_size = var.volume_size
}

module "public_ip" {
  source                = "./modules/public_ip"
  ec2_instance_id       = module.ec2_instance.ec2_instance_id
  ec2_availability_zone = module.ec2_instance.ec2_availability_zone
}


module "security_group" {
  source = "./modules/security_group"
}

 