module "ec2-qa" {
  source = "../ec2-ebs"
  ami-id = "ami-045269a1f5c90a6a0"
  inst-type = "t3.micro"
  az = "us-east-1a"
  size = 100
  path = "/dev/sdh"
  region_name = "us-east-1"
  
}