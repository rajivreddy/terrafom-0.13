module "vpc_resource" {
  source     = "app.terraform.io/oncorps/vpc/aws"
  version    = "1.0.2"
  create_vpc = var.create_vpc
  cidr_block = var.cidr_block
  name       = local.name
  enable_dns_hostnames = true
  tags       = local.vpc_tags
}