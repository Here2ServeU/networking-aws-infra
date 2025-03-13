variable "company_name" {
    description = "The name of the company"
    type        = string
}

variable "environment" {
    description = "The environment"
    type        = string
}

variable "private_subnet_ids" {
    description = "The IDs of the private subnets"
    type        = list(string)
}

variable "desired_capacity" {
    description = "The desired capacity of the autoscaling group"
    type        = number
}

variable "max_size" {
    description = "The maximum size of the autoscaling group"
    type        = number
}

variable "min_size" {
    description = "The minimum size of the autoscaling group"
    type        = number
}