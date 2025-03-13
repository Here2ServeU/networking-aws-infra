resource "aws_eip" "nat" {}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.public_subnet_id

  tags = {
    Name    = "${var.company_name}-${var.environment}-nat"
    Project = var.project_name
  }
}