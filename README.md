
# Amazon EKS with Terraform

This repository provides Terraform scripts to deploy an Amazon EKS cluster along with base infrastructure and platform-specific infrastructure.

## Folder Structure

The repository is organized into the following folders:

1. [`base_infra`](/baseinfra/): Contains Terraform scripts for setting up the base infrastructure, including VPC, subnets, and security groups.

2. [`platform_infra`](/platforminfra/): Contains Terraform scripts for setting up the EKS cluster and nodes, as well as any additional resources required for your platform.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (>= 0.13)
- [AWS CLI](https://aws.amazon.com/cli/)
- AWS account with appropriate IAM permissions

## Workflow

### Setting up Base Infrastructure

1. Navigate to the `base_infra` folder:

```bash
cd base_infra
```

2. Initialize Terraform with backend configuration:

```bash
terraform init -backend-config="env/baseinfra.config"
```

3. Review and modify the `base_infra` configuration files as needed.

4. Create an execution plan:

```bash
terraform plan
```

5. Apply the changes to create base infrastructure:

```bash
terraform apply
```

### Setting up Platform Infrastructure (EKS Cluster)

1. Navigate to the `platform_infra` folder:

```bash
cd platform_infra
```

2. Initialize Terraform with backend configuration:

```bash
terraform init -backend-config="env/platforminfra.config"
```

3. Review and modify the `platform_infra` configuration files as needed.

4. Create an execution plan:

```bash
terraform plan
```

5. Apply the changes to create the EKS cluster and associated resources:

```bash
terraform apply
```

## Cleanup

To tear down the infrastructure when no longer needed:

1. Navigate to each folder and run:

```bash
terraform destroy
```

## Notes

- Replace placeholders like `env/baseinfra.config` and `env/platforminfra.config` with the actual paths to your backend configurations.

- Make sure to review and adjust security group rules, IAM policies, and configurations as needed.
