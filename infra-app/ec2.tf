resource "aws_key_pair" "my_key_new" {
    key_name = "${var.env}-infra-app-key"
    public_key =  file("tf-module.pem") 
}