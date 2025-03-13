resource "aws_cloudwatch_log_group" "log_group" {
  name              = "${var.company_name}-${var.environment}-logs"
  retention_in_days = 30
}

resource "aws_cloudwatch_metric_alarm" "cpu_high" {
  alarm_name          = "${var.company_name}-${var.environment}-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period             = 300
  statistic           = "Average"
  threshold          = 80
  alarm_actions       = [var.alarm_action]
}