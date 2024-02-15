provider "aws" {
    region = "eu-west-1"
}

resource "aws_instance" "my-instance" {
    ami = var.ami_id
    key_name = var.key_name
    instance_type = var.instance_type
    vpc_security_group_ids = var.vpc_security_group_ids.id
    tags = {
        Name = "instance-1"
    }
}

#variables

variable "ami_id" {
    default = "ami-0766b4b472db7e3b9"
}

variable "key_name" {
    default = "irelanddd"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "vpc_security_group_ids" {
    default = "sg-00f87cceadfe8e076"
}