# Create AWS EKS Cluster using predefine arn and subnet ids
resource "aws_eks_cluster" "demo" {
  name     = "demo"
  role_arn = data.terraform_remote_state.baseinfra.outputs.aws_iam_role_demo
  vpc_config {
    subnet_ids = [
      data.terraform_remote_state.baseinfra.outputs.public_subnet_1a_id,  
      data.terraform_remote_state.baseinfra.outputs.public_subnet_1b_id
    ]
  }

  depends_on = [data.terraform_remote_state.baseinfra.outputs.policy_attachment_demo_AmazonEKSClusterPolicy]
}