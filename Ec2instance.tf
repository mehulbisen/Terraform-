provider "aws" {
    region = eu-west-1
}

resource "aws_instance" "my-instance" {
    ami = "ami-0766b4b472db7e3b9"
    instance_type = "t2.micro"
    key_name = "irelanddd"
    security_groups = ["sg-00f87cceadfe8e076"]
    tags = {
        Name = instance-1
    }
}