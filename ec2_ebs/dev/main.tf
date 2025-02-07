module "ec2-ebs" {
  source = "../ec2-ebs"
  ami-id = "ami-045269a1f5c90a6a0"
  inst-type = "t2.micro"
  az = "us-east-1a"
  size = 10
  path = "/dev/sdh"
  region_name = "us-east-1"
}