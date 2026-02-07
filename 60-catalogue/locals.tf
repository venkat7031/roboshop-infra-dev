locals {
  vpc_id             = data.aws_ssm_parameter.vpc_id.value
  private_subnet_id  = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
  private_subnet_ids  = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
  catalogue_sg_id    = data.aws_ssm_parameter.catalogue_sg_id.value
  ami_id             = data.aws_ami.joindevops.id
  backend_listener_arn = data.aws_ssm_parameter.backend_listener_arn.value
  bastion_ip = data.aws_ssm_parameter.bastion_ip.value
  
  common_tags = {
    project     = var.project
    Environment = var.environment
    Terraform   = "true"
  }
}
