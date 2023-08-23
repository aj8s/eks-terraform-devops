# Base Infrastructure Setup with Terraform

This directory contains Terraform scripts for setting up the base infrastructure, including VPC, subnets, IAM roles, security groups, and more.

## Folder Structure

- `data.tf`: Defines any external data sources needed for the base infrastructure.
- `iam.tf`: Defines IAM roles and policies required for the base infrastructure.
- `locals.tf`: Contains local values to simplify configuration.
- `network.tf`: Defines the VPC, subnets, and other networking components.
- `provider.tf`: Specifies the AWS provider configuration.
- `security_group.tf`: Defines security groups and their associated rules.
- `variables.tf`: Declares input variables for the base infrastructure.
- `outputs.tf`: Specifies output values for reference.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (>= 0.13)
- [AWS CLI](https://aws.amazon.com/cli/)
- AWS account with appropriate IAM permissions

## Configuration

1. Modify the variables in `variables.tf` to match your requirements.
2. Customize IAM roles and policies in `iam.tf` according to your security needs.
3. Adjust security group rules in `security_group.tf` to fit your organization's policies.
4. Review and modify networking settings in `network.tf` as needed.
5. Define any external data sources in `data.tf` if required.

## Usage

1. Initialize Terraform:

```bash
terraform init
```

2. Review the execution plan:

```bash
terraform plan
```

3. Apply the changes to create the base infrastructure:

```bash
terraform apply
```

## Cleanup

To tear down the base infrastructure when no longer needed:

1. Run:

```bash
terraform destroy
```

2. Confirm with "yes" when prompted.

## Notes

- Replace placeholders in the Terraform files with your actual configurations.

- Ensure that security group rules and IAM policies align with your organization's security requirements.

- Always practice best security practices when setting up IAM roles, security groups, and other resources.
