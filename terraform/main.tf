module "bucket" {
    source = "./modules/bucket"
    bucket_name = "aws-s3-mack-teste-1"
    region = "us-east-1"
}

resource "aws_s3_object" "index_html" {
    key = "index_html"
    bucket = module.bucket.s3-bucket-arn
    source = "./files/index.html"
}