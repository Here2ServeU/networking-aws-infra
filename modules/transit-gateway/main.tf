resource "aws_ec2_transit_gateway" "tg" {
  description = "${var.company_name}-${var.environment}-transit-gateway"
}