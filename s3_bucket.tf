provider "aws" {
    region = "eu-west-1"
}
resource "aws_s3_bucket" "my_s3" {
    bucket = "my-ireland-bucket"
    tags = {
        env = "dev"
    }
}