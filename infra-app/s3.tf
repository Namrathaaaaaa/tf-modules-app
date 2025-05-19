resource "aws_s3_bucket" "remote_s3" {
  bucket = "tws-namratha-bucket"

  tags = {
    Name        = "tws-namratha-bucket"
    Environment = var.env
  }

}
