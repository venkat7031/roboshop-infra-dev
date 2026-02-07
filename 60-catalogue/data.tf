data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project}-${var.environment}/vpc_id"
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project}-${var.environment}/private_subnet_ids"
}

data "aws_ssm_parameter" "catalogue_sg_id" {
  name = "/${var.project}-${var.environment}/catalogue_sg_id"
}

data "aws_ssm_parameter" "bastion_ip" {
  name = "/${var.project}-${var.environment}/bastion_ip"
}

data "aws_ssm_parameter" "backend_listener_arn" {
  name = "/${var.project}-${var.environment}/backend_listener_arn"
}

data "aws_ami" "joindevops" {
  owners      = ["973714476881"]
  most_recent = true

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }
}