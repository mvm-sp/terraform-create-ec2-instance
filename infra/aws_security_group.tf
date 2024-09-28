module "aws_security_group" {
  source = "terraform-aws-modules/security-group/aws//modules/http-80"

  name        = var.securityGroupName
  description = var.securityGrouDescription
  vpc_id      = var.vpcId

  ingress_cidr_blocks = [local.vpc_cidr]
}


locals {
  region = var.aws_region

  vpc_cidr = "0.0.0.0/0"

}