variable "kms_key_description" {
  description = "Description of the KMS key"
  type        = string
  default     = "My KMS Key"
}

variable "kms_key_policy" {
  description = "The policy for the KMS key"
  type        = string
  default     = jsonencode({
    Version = "2012-10-17",
    Id      = "key-default-1",
    Statement = [
      {
        Sid    = "Allow admin access",
        Effect = "Allow",
        Principal = {
          AWS = "*"
        },
        Action = [
          "kms:*"
        ],
        Resource = "*"
      }
    ]
  })
}

variable "kms_alias_name" {
  description = "Alias name for the KMS key"
  type        = string
  default     = "alias/my-key-alias"
}
