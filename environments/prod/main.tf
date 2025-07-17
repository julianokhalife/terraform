provider "aws" {
  region = var.region
}

module "private_bucket" {
  source      = "../../modules/s3"
  bucket_name = "${var.project}-prod-private-bucket"
  tags = {
    Name = "${var.project}-prod-private-bucket"
  }
  public = false
}

module "public_bucket" {
  source      = "../../modules/s3"
  bucket_name = "${var.project}-prod-public-bucket"
  tags = {
    Name = "${var.project}-prod-public-bucket"
  }
  public = true
} 