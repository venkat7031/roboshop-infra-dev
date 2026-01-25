module "frontend" {
  #source = "../../terraform-aws-securitygroup"
  source = "git::https://github.com/venkat7031/terraform-aws-securitygroup.git?ref=main"
  project = var.project
  environment = var.environment

  sg_name = var.sg_name
  sg_description = var.sg_description
  vpc_id = local.vpc_id
}