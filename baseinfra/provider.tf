terraform {
   
    required_providers{
        aws = {
            source = "hashicorp/aws"
           
        }
    }
    # backend "s3" {
      
    # }
     backend "local" {
    path = "/home/pradip/infra_ajit/eks-terraform/baseinfra/terraform.tfstate"
                    }
}

provider "aws" {
    region = var.aws_region
}

# data "terraform_remote_state" "baseinfra" {
#     backend = "s3"
#     config = {
#         bucket      = "${var.remote_state_bucket}"
#         key         = "${var.remote_state_key}"
#         region      = "${var.aws_region}"
#     }
# }
