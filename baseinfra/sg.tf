resource "aws_security_group" "base_sg" {
  name        = "base-security-group"
  description = "Base security group for VPC"

  // Inbound rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Limit this to your specific IPs

    description = "SSH Access"
  }

  // Outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # All traffic
    cidr_blocks = ["0.0.0.0/0"]

    description = "Outbound traffic"
  }
}

resource "aws_security_group_rule" "eks_cluster_ingress" {
  type        = "ingress"
  from_port   = 443
  to_port     = 443
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]  # Limit this to your specific IPs
  security_group_id = aws_security_group.base_sg.id
}

resource "aws_security_group_rule" "eks_cluster_egress" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"  # All traffic
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.base_sg.id
}

resource "aws_security_group_rule" "eks_nodes_ingress" {
  type        = "ingress"
  from_port   = 0
  to_port     = 65535  # Example: Allow all ports for communication within nodes
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.base_sg.id
}

resource "aws_security_group_rule" "eks_nodes_egress" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"  # All traffic
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.base_sg.id
}