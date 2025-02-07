# Provisioning ec2  instance with ebs volume
resource "aws_instance" "dev-server" {
  ami               = var.ami-id # Calling variable that was declared in variables.tf
  instance_type     = var.inst-type # 255 gb
  availability_zone = var.az  # declatrion of the availability zone, calling variable that was declared in variables.tf
  #key_name = "demo"
  tags = {
    Name       = "dev-server"
    env        = " development"
    Created_by = "terraform"
  }
}
# Creating an EBS volume and it needs to be attached to an instance
resource "aws_ebs_volume" "dev-vol" {
  availability_zone = "us-east-1a" # same as instance
  size              = var.size         # in GB
  tags = {
    Name       = "dev-server"
    env        = " development"
    Created_by = "terraform"
  }
}
# Attaching EBS volume to ec2 instanc
resource "aws_volume_attachment" "dev-server" {
  device_name = var.path
  volume_id   = aws_ebs_volume.dev-vol.id
  instance_id = aws_instance.dev-server.id # id of the ec2 instance
}

