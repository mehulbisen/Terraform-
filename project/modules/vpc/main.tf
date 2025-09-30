resource "aws_vpc" "demo-vpc" {
    cidr_block = var.cidr_block
}

resource "aws_subnet" "public-subnet" {
    vpc_id = aws_vpc.demo-vpc.id 
    cidr_block = var.public_subnet_cidr 
}

resource "aws_subnet" "private-subnet" {
    vpc_id = aws_vpc.demo-vpc.id 
    cidr_block = var.private_subnet_cidr 
}

resource "aws_internet_gateway" "demo-igw" {
    vpc_id = aws_vpc.demo-vpc.id 
}

resource "aws_route_table" "public-route-table" {
    vpc_id = aws_vpc.demo-vpc.id 
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.demo-igw.id 
    }
}

resource "aws_route_table" "private-route-table" {
    vpc_id = aws_vpc.demo-vpc.id 
}

resource "aws_route_table_association" "public-subnet-association" {
    subnet_id = aws_subnet.public-subnet.id
    route_table_id = aws_route_table.public-route-table.id 
}

resource "aws_route_table_association" "private-subnet-association" {
    subnet_id = aws_subnet.private-subnet.id
    route_table_id = aws_route_table.private-route-table.id 
}

