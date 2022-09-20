terraform {

  required_version = ">= 1.1"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.4.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.0.0"
    }
  }
}

