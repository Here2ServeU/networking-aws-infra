module "vpc" {
  source         = "../../modules/vpc"
  cidr_block     = "10.10.0.0/16"
  company_name   = var.company_name
  project_name   = var.project_name
  environment    = var.environment
}

module "subnets" {
  source             = "../../modules/subnets"
  vpc_id             = module.vpc.vpc_id
  public_subnets     = ["10.10.1.0/24", "10.10.2.0/24"]
  private_subnets    = ["10.10.3.0/24", "10.10.4.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
  company_name       = var.company_name
  project_name       = var.project_name
  environment        = var.environment
}

module "vpn" {
  source        = "../../modules/vpn"
  vpc_id        = module.vpc.vpc_id
  company_name  = var.company_name
  project_name  = var.project_name
  environment   = var.environment
}

module "transit_gateway" {
  source        = "../../modules/transit-gateway"
  region        = var.aws_region
  company_name  = var.company_name
  project_name  = var.project_name
  environment   = var.environment
}

module "direct_connect" {
  source         = "../../modules/direct-connect"
  dx_location    = "EqDC2"
  dx_bandwidth   = "1Gbps"
  company_name   = var.company_name
  project_name   = var.project_name
  environment    = var.environment
}