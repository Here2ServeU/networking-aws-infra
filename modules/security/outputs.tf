output "waf_acl_id" {
  value = aws_waf_web_acl.waf.id
}

output "guardduty_detector_id" {
  value = aws_guardduty_detector.guardduty.id
}