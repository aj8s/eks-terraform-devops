# VPC ID 
output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

# VPC Cidr Block
output "vpc_cidr_block" {
  description = "VPC Cidr Block"
  value       = module.vpc.vpc_cidr_block
}

# VPC Private Subnets
output "vpc_private_subnets" {
  description = "VPC Private Subnets"
  value       = module.vpc.private_subnets
}

# VPC Public Subnets 
output "vpc_public_subnets" {
  description = "VPC Public Subnets"
  value       = module.vpc.public_subnets
}

# VPC NAT Gateway Public IP
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# VPC AZs
output "vpc_azs" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}
