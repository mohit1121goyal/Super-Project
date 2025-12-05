variable "aws_region" {
  default = "ap-south-1"
}

variable "aws_ami" {
  default = "ami-05561ceba311a6c7b"   # Mumbai (ap-south-1) Ubuntu 22.04 LTS
}

variable "aws_type" {
  default = "t3.medium"
}

variable "aws_key_name" {
  default = "Mumbai"
}
