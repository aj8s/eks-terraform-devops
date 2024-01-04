variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "eks"

}


variable "cluster_service_ipv4_cidr" {
  description = "EKS Cluster Service IPv4 CIDR"
  type        = string
  default     = null
}

variable "cluster_version" {
  description = "EKS Cluster Version"
  type        = string
  default     = null
}

variable "cluster_endpoint_private_access" {
  description = "EKS Cluster Endpoint Private Access"
  type        = bool
  default     = false
}

variable "cluster_endpoint_public_access" {
  description = "EKS Cluster Endpoint Public Access"
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "EKS Cluster Public Access CIDRs"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ec2_ssh_key" {
  description = "EC2 SSH Key"
  type        = string
  default     = "terraform-eks-demo"
}
