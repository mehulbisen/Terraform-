provider "aws" {
    region = var.aws_region 
}

module "vpc" {
    source = "/home/cloudshell-user/Terraform-/project/modules/vpc/"
    cidr_block = var.cidr_block 
    public_subnet_cidr = var.public_subnet_cidr 
    private_subnet_cidr = var.private_subnet_cidr 
}