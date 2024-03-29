provider "aws" {
    region = "eu-west-1"
}

resource "aws_instance" "my_instance" {
    ami             = "ami-0766b4b472db7e3b9"
    instance_type   = "t2.micro"
    key_name        = "irelanddd"
    vpc_security_group_ids = ["sg-00f87cceadfe8e076"]
    tags = {
        Name = "instance-1"
    }
}
