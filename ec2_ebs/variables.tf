variable "ami-id" {
    description = "The AMI to use for the instance"
    default     = "ami-045269a1f5c90a6a0"
    type = string
}
variable "inst-type" {
description = "The type of instance to start"
    default     = "t2.micro"
    type = string
}
variable "az" {
  description = "value of the availability zone"
  default = "us-east-1a"
}
variable "size"{
    description = "value of the size of the ebs volume"
    default = 10
}
variable "path" {
  description = "value of the path of the ebs volume"
  default = "/dev/sdh"
}
variable "region_name" {
  description = "region name"
  default = "us-east-1"
  type = string
}