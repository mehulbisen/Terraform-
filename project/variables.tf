variable "aws_region" {
    description = "AWS Region in which resources to be launched"
    type = string
    default = "ap-south-1"
}

variable "vpc_cidr" {
    description = "CIDR for aws VPC"
    type = string
    default = "10.0.0.0/16"
}

variable "aws_public_subnet" {
    description = "cidr for public subnet"
    type = string 
    default = "10.0.1.0/24"
}

variable "aws_private_subnet" {
    description = "cidr for private subnet" 
    type = string 
    default = "10.0.2.0/24"
}
