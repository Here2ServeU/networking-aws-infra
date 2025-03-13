variable "vpc_id" {
    description = "The ID of the VPC"
    type        = string
}

variable "public_subnets" {
    description = "The CIDR blocks for the public subnets"
    type        = list(string)
}

variable "private_subnets" {
    description = "The CIDR blocks for the private subnets"
    type        = list(string)
}

variable "availability_zones" {
    description = "The availability zones for the subnets"
    type        = list(string)
}

variable "company_name" {
    description = "The name of the company"
    type        = string
}

variable "project_name" {
    description = "The name of the project"
    type        = string
}

variable "environment" {
    description = "The environment"
    type        = string
}