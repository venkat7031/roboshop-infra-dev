module "vpc" {

  source = "git::https://github.com/venkat7031/terraform-aws-vpc.git?ref=main"
  project = var.project
  environment = var.environment
  public_subnet_cidr = var.public_subnet_cidrs
  private_subnet_cidr = var.private_subnet_cidrs
  database_subnet_cidr = var.database_subnet_cidrs

  is_peering_required = true
}