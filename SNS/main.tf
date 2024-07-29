resource "aws_sns_topic" "example" {
  name        = var.sns_topic_name
  display_name = var.sns_display_name

  tags = var.tags
}
