resource "aws_waf_web_acl" "waf" {
  name        = "${var.company_name}-${var.environment}-waf"
  metric_name = "${var.company_name}${var.environment}WAF"
  default_action {
    type = "ALLOW"
  }
}

resource "aws_guardduty_detector" "guardduty" {
  enable = true
}