locals {
  owner       = var.project
  environment = var.environment
  name        = "${var.project}-${var.environment}"

  common_tags = {
    owner       = local.owner
    environment = local.environment
  }

  eks_cluster_name = "${local.name}-${var.cluster_name}"

}
