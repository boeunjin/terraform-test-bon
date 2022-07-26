terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 3.0.0, < 4.0.0"
        }
    }
}

provider "aws" {
    region = var.region

    default_tags {
      tags = {
          Environment = var.env
          Project = var.prj
          Service = var.svc
      }
    }
}