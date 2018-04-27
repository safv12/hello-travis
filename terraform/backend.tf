terraform {
  backend "s3" {
    key    = "iac/terraform/core/hello-travis/de/terraform.tfstate"
    region = "us-east-1"
    bucket = "gbm-devops-poce-01"
  }
}
