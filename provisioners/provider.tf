terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  backend "s3" {
    bucket = "dcloudlab-remote-state"
    key    = "provisioners"
    region = "us-east-1"
    #dynamodb_table = "dcloudlab-remote-state"
    encrypt        = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
}