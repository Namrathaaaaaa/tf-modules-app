variable "env" {
  description = "This is the environment"
  type        = string
}

variable "bucket_name" {
  description = "This is the name for my bucket"
  type        = string
}


variable "instance_count" {
  description = "This is the number of ec2 instance"
  type        = number
}

variable "instance_type" {
  description = "This is the instance type"
  type        = string
}

variable "ec2_ami_id" {
  description = "This is ec2 ami id "
  type        = string

}

variable "hash_key" {
  description = "This is the hash_key for dynamodb"
  type        = string

}
