variable "cidr_block" {
    description = "CIDR for VPC"
    type = string
}

variable "public_subnet_cidr" {
    description = "CIDR for public subnet"
    type = string
}

variable "private_subnet_cidr" {
    description = "CIDR for private subnet"
    type = string 
}