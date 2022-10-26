provider "aws" {
  profile                  = "default"
  region                   = "eu-north-1"
  shared_credentials_files = ["~/.aws/credentials"]

  default_tags {
    tags = {
      Environment     = "Test"
      Service         = "Nodered"
      HashiCorp-Learn = "aws-default-tags"
    }
  }
}