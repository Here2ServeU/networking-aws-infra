output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.subnets.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.subnets.private_subnet_ids
}

output "vpn_gateway_id" {
  value = module.vpn.vpn_gateway_id
}

output "transit_gateway_id" {
  value = module.transit_gateway.transit_gateway_id
}

output "direct_connect_id" {
  value = module.direct_connect.dx_connection_id
}