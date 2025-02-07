module "ec2-prod" {
    source = "../ec2-ebs"
    ami-id = "ami-045269a1f5c90a6a0"
    inst-type = "xxm.Large"
    az = "us-east-1b"
    size = 1000
    path = "/dev/sdh"
    region_name = "us-east-1"
}