terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
}
backend "s3" {
    bucket = "roboshop"
    region = "us-east-1"
    use_lockfile = true
    }

required_version = ">= 1.0"

}
