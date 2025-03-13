resource "aws_vpn_gateway" "vpn" {
  vpc_id = var.vpc_id

  tags = {
    Name    = "${var.company_name}-${var.environment}-vpn-gateway"
    Project = var.project_name
  }
}