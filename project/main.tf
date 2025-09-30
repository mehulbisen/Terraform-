provider "aws" {
    region = var.aws_region
}

module "vpc" {
    source = "/home/cloudshell-user/Terraform-/project/modules/vpc/"
    vpc_cidr = var.vpc_cidr 
    aws_public_subnet = var.public_subnet_cidr
    aws_private_subnet = var.private_subnet_cidr 
}