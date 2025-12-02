terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
}
backend "s3" {
    bucket = "eternal-s3-dev"
    region = "us-east-1"
    use_lockfile = true
    }

required_version = ">= 1.2"

}
