variable "environment" {
  default = "dev"
}

variable "service_tag" {
  type = map(string)
  default =  {
    web =  "nginx"
    OS = "Redhat Linux"
  }
}
variable "common_tags" {
  type = map(string)
  default = {
    Createdby   = "Terraform",
    Costcenter  = "FIN-005-HYD-CLOUD-AWS",
    Admin_email = "admin.roboshop@gmail.com"
  }
}
variable "project" {
  default = "eternalplace"
}
variable "zone_id" {
  default = "Z101265833JA5X90XBKK8"
}
variable "zone_name" {
  default = "eternaltrainings.online"  
}
variable "instance_type" {
  default = "t2.micro" 
}

variable "priority" {
  default = "40" 
}
variable "name" {
  default = "web"
}
variable "app_version" {
  default = "1.0"
}