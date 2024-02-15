provider "aws" {
    region = "eu-west-1"
}

resource "aws_iam_user" "saku_user" {
    name = "sakku"
    permisssions_boundary = "arn:aws:iam::aws:policy/AdministratorAccess"
    tag {
        env = "dev"
    }
}