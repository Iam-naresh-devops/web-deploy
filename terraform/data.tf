data "aws_ssm_parameter" "ami_user" {
    name = "/${var.project}/${var.environment}/ami_user"
}
data "aws_ssm_parameter" "ami_password" {
    name = "/${var.project}/${var.environment}/ami_password"
}
data "aws_ami" "AMI_2" {
  most_recent = true
  owners      = ["703671922956"]
  filter {
    name   = "name"
    values = ["AMI_2"]
  }
}
data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project}/${var.environment}/private_subnet_ids"
}
data "aws_ssm_parameter" "web_sg_id" {
  name = "/${var.project}/${var.environment}/web_sg_id"
}
data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project}/${var.environment}/vpc_id"
}
data "aws_ssm_parameter" "web_alb-listener_arn" {
  name = "/${var.project}/${var.environment}/web_alb-listener_arn"
}
