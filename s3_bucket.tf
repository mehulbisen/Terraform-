provider "aws" {
    region = "eu-west-1"
}
resource "aws_s3_bucket" "my_s3" {
    bucket = "euu-irelaaannnddd-bucket"
    tags = {
        env = "dev"
    }
}