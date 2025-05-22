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
  type = number
  
}