# aws-eks-iac
This is a repository for creating an EKS cluster on AWS using Terraform.

## Pre-requisites
- AWS Account
- AWS CLI
- Terraform
- kubectl

## Summary of `1-vpc` Folder

The `1-vpc` folder contains Terraform configuration files for setting up the Virtual Private Cloud (VPC) in AWS. This VPC will host the EKS cluster and its associated resources. The main components include:

- **`main.tf`**: Defines the primary resources for the VPC, such as subnets, route tables, and internet gateways.
- **`providers.tf`**: Specifies the AWS provider configuration, including the region and authentication details.
- **`variables.tf`**: Contains the variable definitions used in the `main.tf` file, allowing customization of the VPC configuration.
This folder is essential for creating the network infrastructure required for the EKS cluster.

## Summary of `2-eks` Folder

The `2-eks` folder contains Terraform configuration files for setting up the Amazon Elastic Kubernetes Service (EKS) cluster in AWS. This folder builds upon the VPC created in the `1-vpc` folder and includes the following components:

- **`main.tf`**: Defines the primary resources for the EKS cluster, such as the EKS cluster itself, node groups, and associated IAM roles and policies.
- **`variables.tf`**: Contains the variable definitions used in the `main.tf` file, allowing customization of the EKS cluster configuration.
- **`outputs.tf`**: Specifies the outputs of the EKS module, such as the EKS cluster endpoint and the kubeconfig file, which are used to interact with the cluster.
- **`terraform.tfvars`**: A sample file where you can define the values for the variables specified in `variables.tf`.

This folder is essential for creating and managing the EKS cluster and its associated resources.