terraform {
  backend "s3" {
    bucket = "my-app-tf-remote-backend"
    key    = "terraform/dev/tfstate.tfstate"
    region = "eu-north-1"
  }
} 
