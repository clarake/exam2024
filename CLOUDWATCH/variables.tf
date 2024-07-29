variable "cloudwatch_alarm_name" {
  description = "Name of the CloudWatch alarm"
  type        = string
  default     = "MyCloudWatchAlarm"
}

variable "cloudwatch_alarm_threshold" {
  description = "Threshold for the CloudWatch alarm"
  type        = number
  default     = 1
}

variable "cloudwatch_alarm_period" {
  description = "Period (in seconds) for the CloudWatch alarm"
  type        = number
  default     = 300
}

variable "cloudwatch_log_group_name" {
  description = "Name of the CloudWatch log group"
  type        = string
  default     = "MyLogGroup"
}
