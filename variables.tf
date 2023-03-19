variable "oktapam_secret" {
  type        = string
  description = "Okta ASA Secret"
}

variable "oktapam_key" {
  type        = string
  description = "Okta ASA Key"
}

variable "oktapam_team" {
  type        = string
  description = "Okta ASA Team Name"
}

variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "aws_access_key" {
  type        = string
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Key"
}

variable "aws_environment_tag" {
  description = "AWS tag to attach to resources"
  default     = "ASATerraformDemo"
}

variable "aws_instance_ami" {
  description = "AMI for aws EC2 instance.  Default is ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20220901-47489723-7305-4e22-8b22-b0d57054f216"
  default     = "ami-0e14491966b97e8bc"
}

variable "aws_instance_type" {
  description = "Aws EC2 instance. Default is t2.micro, recommend is t2.small or t2.medium"
  default     = "t2.micro"
}

variable "aws_instance_distribution" {
  description = "AWS EC2 instance distro"
  default = "jammy"
} 