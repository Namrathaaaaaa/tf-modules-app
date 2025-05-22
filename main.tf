module "dev-infra" {
  source         = "./infra-app"
  env            = "dev"
  bucket_name    = "infra-app-bucket"
  instance_count = 1
  instance_type  = "t2.micro"
  ec2_ami_id     = "ami-0af9569868786b23a"
  hash_key       = "student_ID"
}

module "prd-infra" {
  source         = "./infra-app"
  env            = "prd"
  bucket_name    = "infra-app-bucket"
  instance_count = 2
  instance_type  = "t2.micro"
  ec2_ami_id     = "ami-0af9569868786b23a"
  hash_key       = "student_ID"
}

module "stg-infra" {
  source         = "./infra-app"
  env            = "stg"
  bucket_name    = "infra-app-bucket"
  instance_count = 1
  instance_type  = "t2.micro"
  ec2_ami_id     = "ami-0af9569868786b23a"
  hash_key       = "student_ID"
}

