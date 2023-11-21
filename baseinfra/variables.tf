variable "aws_region" {
  description = "Default AWS region"
  default     = "us-east-1"
}

variable "remote_state_bucket" {}
variable "remote_state_key" {}

variable "environment" {
  default     = "DEV"
  description = "Environment name used a sprefix"
}


variable "vpc_cidr_block" {
  default     = "10.0.0.0/16"
  description = "CIDR block for the VPC"
}

variable "public_subnet_1a_cidr_block" {
  description = "value of the public subnet 1a cidr block"
  default = "10.0.1.0/24"
}

variable "public_subnet_1b_cidr_block" {
  description = "value of the public subnet 1b cidr block"
  default = "10.0.2.0/24"
}

variable "private_subnet_1a_cidr_block" {
  description = "value of the private subnet 1a cidr block"
  default = "10.0.10.0/24"
}

variable "private_subnet_1b_cidr_block" {
  description = "value of the private subnet 1b cidr block"
  default = "10.0.11.0/24"
}

