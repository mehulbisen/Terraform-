provider "aws" {
    region = "eu-west-1"
}
# AWS VPC
resource "aws_vpc" "my_vpc" {
    tags = {
        Name = "my_vpc"
    }
    cidr_block = "176.22.0.0"
}
#Private Subnet
resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "176.22.1.0/24"
    tags = {
        Name = "private_subnet1"
    }
}
# Private Subnet
resource "aws_subnet" "private_subnet2" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "176.22.2.0/24"
    tags = {
        Name = "private_subnet2"
    }
}
#Public Subnet
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "176.22.3.0/24"
    tags = {
        Name = "public_subnet1"
    }
}
#Public Subnet
resource "aws_subnet" "public_subnet2" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "176.22.4.0/24"
    tags = {
        Name = "public_subnet2"
    }
}
#DB Subnet
resource "aws_subnet" "db_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "176.22.5.0/24"
    tags = {
        Name = "db_subnet1"
    }
}
#DB Subnet
resource "aws_subnet" "db_subnet2" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "176.22.6.0/24"
    tags = {
        Name = "db_subnet2"
    }
}
# Internet Gateway
resource "aws_internet_gateway" "my_IGW" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "My_IGW"
  }
}

