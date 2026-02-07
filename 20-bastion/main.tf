resource "aws_instance" "bastion" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.bastion_sg_id]
  subnet_id = local.public_subnet_id
  associate_public_ip_address = true

  tags = merge(
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}-bastion"
    }
  )

}

resource "aws_ssm_parameter" "bastion_ip" {
  name  = "/${var.project}-${var.environment}/bastion_ip"
  type  = "String"
  value = aws_instance.bastion.public_ip
}


 