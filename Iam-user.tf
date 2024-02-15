provider "aws" {
    region = "eu-west-1"
}

resource "aws_iam_user" "saku_user" {
    name = "sakku"
    permissions_boundary = "arn:aws:iam::aws:policy/AdministratorAccess"
}