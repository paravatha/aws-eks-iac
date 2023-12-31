# tflint-ignore: terraform_unused_declarations

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_name" {
  description = "Existing VPC name"
  type        = string
  default     = "llmops-eks-vpc"
}

variable "vpc_id" {
  description = "Existing VPC id"
  type        = string
  default     = "vpc-xxxx"
}

variable "vpc_cidr" {
  description = "Existing VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "cluster_name" {
  description = "Name of cluster"
  type        = string
  default     = "llmops-eks"
}

variable "cluster_region" {
  description = "Region to create the cluster"
  type        = string
  default     = "us-east-1"
}

variable "cluster_version" {
  description = "The EKS version to use"
  type        = string
  default     = "1.28"
}

variable "node_instance_type" {
  description = "The instance type of an EKS node"
  type        = string
  default     = "t3.medium"
}

variable "tags" {
  type = map(string)
  default = {
    team : "mlops",
    usage : "llmops-eks",
    env : "tech"
  }
}