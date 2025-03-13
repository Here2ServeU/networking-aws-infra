variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "company_name" {
  description = "Company name for resource tagging"
  type        = string
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, stage, prod)"
  type        = string
}

variable "dx_location" {
  description = "Direct Connect location"
  type        = string
}

variable "dx_bandwidth" {
  description = "Direct Connect bandwidth"
  type        = string
}