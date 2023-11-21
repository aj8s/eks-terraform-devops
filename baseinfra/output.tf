output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr_block" {
  value = aws_vpc.main.cidr_block
}

output "public_subnet_1a_id" {
  value = aws_subnet.public-subnet-1a.id
}

output "public_subnet_1b_id" {
  value = aws_subnet.public-subnet-1b.id
}

output "private_subnet_1a_id" {
  value = aws_subnet.private-subnet-1a.id
}

output "private_subnet_1b_id" {
  value = aws_subnet.private-subnet-1b.id
}

output "private_subnets" {
  value = tolist([aws_subnet.private-subnet-1a.id, aws_subnet.private-subnet-1b.id])
}

output "public_subnets" {
  value = tolist([aws_subnet.public-subnet-1a.id, aws_subnet.public-subnet-1b.id])
}

output "aws_iam_role_demo" {
  value = aws_iam_role.demo.arn

}
output "aws_iam_role_node" {
  value = aws_iam_role.nodes
}
output "policy_attachment_demo_AmazonEKSClusterPolicy" {
  value = aws_iam_role_policy_attachment.demo-AmazonEKSClusterPolicy
}