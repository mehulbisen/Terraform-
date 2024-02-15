provider "aws" {
    region = "eu-west-1"
}

resource "aws_s3_bucket" "my_s3" {
    bucket = "euu-irelaaannnddd-bucket"
    tags = {
        env = "dev"
    }
}

resource "aws_s3_bucket_policy" "my_policy" {
    bucket = aws_s3_bucket.my_s3.id
    policy = data.aws_s3_bucket_policy_document.read_only_access.json
}

data "aws_s3_bucket_policy_document" "read_only_access" {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::123456789012:user/example-user"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::my-bucket/*"
        }
    ]
}


