variable "company_name" {
    description = "The name of the company"
    type        = string
}

variable "environment" {
    description = "The environment"
    type        = string
}

variable "alarm_action" {
    description = "The ARN of the SNS topic to notify when this alarm is triggered"
    type        = string
}