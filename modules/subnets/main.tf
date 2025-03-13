resource "aws_subnet" "public" {
  count = length(var.public_subnets)
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnets[count.index]
  availability_zone = var.availability_zones[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name    = "${var.company_name}-${var.environment}-public-${count.index}"
    Project = var.project_name
  }
}

resource "aws_subnet" "private" {
  count = length(var.private_subnets)
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnets[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name    = "${var.company_name}-${var.environment}-private-${count.index}"
    Project = var.project_name
  }
}