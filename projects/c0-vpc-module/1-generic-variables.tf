variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"

}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Service"
  type        = string
  default     = "optix"
}

variable "aws_profile" {
  description = "AWS Profile"
  type        = string
  default     = "mgmt"

}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "eks"

}
