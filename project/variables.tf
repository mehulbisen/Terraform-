variable "aws_region" {
    description = "Region for AWS resources"
    type = string 
    default = "ap-south-1"
}

variable "cidr_block" {
    description = "cidr block for VPC"
    type = string
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
    description = "CIDR block for public subnet"
    type = string 
    default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
    description = " cidr block for private subnet" 
    type = string
    default = "10.0.2.0/24"
}
