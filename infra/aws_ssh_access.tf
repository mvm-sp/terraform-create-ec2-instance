resource "aws_security_group" "aws_ssh_access" {
    name                   = "ssh-access"
    description            = "ssh access role"
    vpc_id                 = var.vpcId
    revoke_rules_on_delete = false

    ingress {
    cidr_blocks = [
      local.vpc_cidr
    ]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
// Terraform removes the default rule
    egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [local.vpc_cidr]
    }
  
}