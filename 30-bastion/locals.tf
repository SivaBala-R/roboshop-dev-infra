locals {
  ami_id = data.aws_ami.amazon_linux
  bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id
  public_subnet_id = data.aws_ssm_parameter.public_subnet_id
  common_name = "${var.project}-${var.environment}"
  common_tags = {
    Project = "${var.project}"
    Environment = "${var.environment}"
    Terraform = "true"
  }
}