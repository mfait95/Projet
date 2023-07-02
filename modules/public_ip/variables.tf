# variables.tf

variable "ec2_instance_id" {
  description = "ID de l'instance EC2 à associer à l'adresse IP publique."
  type        = string
}

variable "ec2_availability_zone" {
  description = "Zone de disponibilité de l'instance EC2."
  type        = string
}

variable "aws_region" {
  description = "Région AWS dans laquelle déployer les ressources."
  type        = string
  default     = "us-east-1"
}

