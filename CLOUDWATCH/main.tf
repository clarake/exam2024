# CloudWatch Log Group
resource "aws_cloudwatch_log_group" "app_log_group" {
  name = var.cloudwatch_log_group_name
}

# CloudWatch Alarm
resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  alarm_name          = var.cloudwatch_alarm_name
  alarm_description   = "This alarm triggers when CPU usage exceeds threshold."
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  statistic           = "Average"
  period              = var.cloudwatch_alarm_period
  evaluation_periods  = 1
  threshold           = var.cloudwatch_alarm_threshold
  comparison_operator = "GreaterThanOrEqualToThreshold"

  dimensions = {
    InstanceId = "<YOUR_INSTANCE_ID>" # Replace with your EC2 instance ID
  }

  # Optional: Set actions (e.g., send notification to SNS)
  # alarm_actions = [aws_sns_topic.my_sns_topic.arn]

  # Optional: Set OK actions
  # ok_actions = [aws_sns_topic.my_sns_topic.arn]

  # Optional: Set insufficient data actions
  # insufficient_data_actions = [aws_sns_topic.my_sns_topic.arn]
}
