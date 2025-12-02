module "web" {
 source =  "git::https://github.com/Mygit-Naresh/robsohop-backend-module.git"
 tags = var.tags
 common_tags = var.common_tags
 project = var.project
 environment = var.environment
 #private_subnet_id = element(split(",",data.aws_ssm_parameter.private_subnet_ids.value),0)
 private_subnet_id = [ "subnet-0eabd4ab34baa2b2e" ]
 name =  var.name
 ami = data.aws_ami.AMI_2.image_id
 ami_user =  data.aws_ssm_parameter.ami_user.value
 ami_password =  data.aws_ssm_parameter.ami_password.value
 #vpc_security_group_ids = data.aws_ssm_parameter.web_sg_id.value
 vpc_security_group_ids = [ "sg-02efeff1df99019a6" ]
 zone_id = var.zone_id
 zone_name = var.zone_name
 instance_type = var.instance_type
 priority = var.priority
 app_listener_arn = data.aws_ssm_parameter.web_alb-listener_arn.value
 port = "80"
 app_version = var.app_version
 }


