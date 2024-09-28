module "aws_ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = var.instanceName

  ami                    = var.imageId
  instance_type          = var.instanceType
  key_name               = var.keyName
  monitoring             = true
  vpc_security_group_ids = [module.aws_security_group.security_group_id,
                            aws_security_group.aws_ssh_access.id]
  user_data = file("files/install_http.sh")

  depends_on = [module.aws_security_group, aws_security_group.aws_ssh_access]
}

