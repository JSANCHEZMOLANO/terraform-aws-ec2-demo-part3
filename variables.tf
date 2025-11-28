variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-0c02fb55956c7d316"
}

variable "key_name" {
  default = "my-terraform-key"
}

variable "public_key_path" {
  default = "ssh/my-key.pub"
}