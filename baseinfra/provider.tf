terraform {
    required_providers{
        aws = {
            source = "hashicorp/aws"   
        }
    }
    backend "s3" {

    }

    #  backend "local" {
    # path = "/home/pradip/infra_ajit/eks-terraform/baseinfra/terraform.tfstate"
    #                 }
}
provider "aws" {
    region = var.aws_region
}


