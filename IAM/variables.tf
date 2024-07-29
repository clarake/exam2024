variable "iam_user_name" {
  description = "Name of the IAM user"
  type        = string
  default     = "my-iam-user"
}

variable "iam_role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "my-iam-role"
}

variable "iam_policy_name" {
  description = "Name of the IAM policy"
  type        = string
  default     = "my-iam-policy"
}

variable "iam_policy_document" {
  description = "IAM policy document JSON"
  type        = string
  default     = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "s3:*",
        Resource = "*"
      }
    ]
  })
}
