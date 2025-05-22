module "dev-infra" {
  source         = "./infra-app"
  env            = "dev"
  bucket_name    = "infra-app-bucket"
  instance_count = 1
  instance_type  = "t2-micro"
  ec2_ami_id     = "ami-0953476d60561c955"
  hash_key       = "student_ID"
}
