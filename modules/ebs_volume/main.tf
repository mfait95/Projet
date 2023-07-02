resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "us-east-1a"
  size              = var.volume_size
  tags              = {
    Name = "MonVolumeEBS"
  }
}
