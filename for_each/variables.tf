variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}
output "all_users" {
  value = aws_iam_user.example
}

variable "custom_tags" {
  description = "Custom tags to set on the Instances in the ASG"
  type        = map(string)
  default     = {}
}
variable "enable_autoscaling" {
  description = "If set to true, enable auto scaling"
  type        = bool
}