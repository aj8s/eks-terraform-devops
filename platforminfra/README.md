# Platform-Specific Infrastructure Setup with Terraform

This directory contains Terraform scripts for setting up platform-specific infrastructure, including Amazon EKS cluster, nodes, application resources, and more.

## Folder Structure

- `app.tf`: Defines application-specific resources to deploy on the EKS cluster.
- `provider.tf`: Specifies the AWS provider configuration.
- `variable.tf`: Declares input variables for the platform-specific infrastructure.
- `outputs.tf`: Specifies output values for reference.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (>= 0.13)
- [AWS CLI](https://aws.amazon.com/cli/)
- AWS account with appropriate IAM permissions

## Configuration

1. Modify the variables in `variable.tf` to match your requirements.
2. Customize application-specific resources in `app.tf` according to your application's needs.

## Usage

1. Ensure that the base infrastructure (VPC, subnets, security groups) has been set up using the `base_infra` module.
2. Initialize Terraform:

```bash
terraform init
```

3. Review the execution plan:

```bash
terraform plan
```

4. Apply the changes to create the platform-specific infrastructure:

```bash
terraform apply
```

## Cleanup

To tear down the platform-specific infrastructure when no longer needed:

1. Run:

```bash
terraform destroy
```

2. Confirm with "yes" when prompted.

## Notes

- Replace placeholders in the Terraform files with your actual configurations.

- Ensure that the application resources in `app.tf` are aligned with your application's requirements.

- Always follow best practices when deploying application resources on the EKS cluster.