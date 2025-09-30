provider "aws" {
    region = var.aws_region
}

module "vpc" {
    source = "/home/cloudshell-user/Terraform-/project/modules/vpc/"
    vpc_cidr = var.vpc_cidr 
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr 
}