resource "aws_instance" "bastion" {
  ami                  = data.aws_ami.amzlinux2.id
  instance_type        = var.instance_type
  subnet_id            = module.vpc.public_subnets[0]
  security_groups      = [aws_security_group.bastion_sg.id]
  iam_instance_profile = aws_iam_instance_profile.ssm_iam_profile.name
  tags                 = local.common_tags
}


resource "aws_eip" "bastion_eip" {
  depends_on = [aws_instance.bastion, module.vpc]

  instance = aws_instance.bastion.id
  domain   = "vpc"
  tags     = local.common_tags

}
