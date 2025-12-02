variable "environment" {
  default = "dev"
}

variable "tags" {
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
  default = "Z03105683IDC7LBRUZE5"
}
variable "zone_name" {
  default = "eternallearnings.shop"  
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