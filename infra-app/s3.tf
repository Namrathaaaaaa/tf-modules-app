resource "aws_s3_bucket" "remote_s3" {
  bucket = "${var.env}-${var.bucket_name}"

  tags = {
    Name        = "infra-app-bucket"
    Environment = var.env
  }

}
