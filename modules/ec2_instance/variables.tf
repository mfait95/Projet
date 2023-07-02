variable "volume_size" {
  description = "Size of the EBS volume"
  type        = number
  default     = 50
}
variable "ami" {
  description = "ami for our instance"
}

variable "instance_type" {
  description = "the instance type for our instance"
}
variable "tag_name" {
  description = "name of tag for our instance"
}
variable "sg" {
  description = "security group that allows public access via http/ssh"
}