variable "aws_region" {
  type        = string
  description = "This is the region where the resources will be registred"
  default     = "us-east-2"
}

variable "imageId" {
  type        = string
  description = "This is the image id to ec2 instances"
}

variable "instanceType" {
  type        = string
  description = "This is the instance type to an EC2 resource"
}

variable "keyName" {
  type        = string
  description = "This is the key pair name to an EC2 resource"
}

variable "instanceName" {
  type        = string
  description = "This is the name to an EC2 resource"
}

variable "subnetId" {
  type        = string
  description = "This is the subnetID to an EC2 resource"
}

variable "securityGroupName" {
  type        = string
  description = "This is the security group name to HTTP ingress"
}

variable "securityGrouDescription" {
  type        = string
  description = "This is the security group description to HTTP ingress"
}

variable "vpcId" {
  description = "This is the public VPC ID to HTTP ingress"
}
