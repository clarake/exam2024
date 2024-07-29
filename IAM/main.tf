# IAM User
resource "aws_iam_user" "example_user" {
  name = var.iam_user_name
}

# IAM Policy
resource "aws_iam_policy" "example_policy" {
  name        = var.iam_policy_name
  description = "A test policy"
  policy      = var.iam_policy_document
}

# IAM Role
resource "aws_iam_role" "example_role" {
  name = var.iam_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Attach Policy to Role
resource "aws_iam_role_policy_attachment" "example_role_policy_attachment" {
  policy_arn = aws_iam_policy.example_policy.arn
  role      = aws_iam_role.example_role.name
}

# Attach Role to User
resource "aws_iam_user_policy_attachment" "example_user_policy_attachment" {
  policy_arn = aws_iam_policy.example_policy.arn
  user      = aws_iam_user.example_user.name
}
