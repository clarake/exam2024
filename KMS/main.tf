# KMS Key
resource "aws_kms_key" "example_key" {
  description = var.kms_key_description
  policy      = var.kms_key_policy

  tags = {
    Name = "MyKMSKey"
  }
}

# KMS Key Alias
resource "aws_kms_alias" "example_alias" {
  name          = var.kms_alias_name
  target_key_id  = aws_kms_key.example_key.id
}

