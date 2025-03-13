resource "aws_dx_connection" "dx" {
  name      = "${var.company_name}-${var.environment}-dx"
  location  = var.dx_location
  bandwidth = var.dx_bandwidth

  tags = {
    Name    = "${var.company_name}-${var.environment}-dx"
    Project = var.project_name
  }
}