provider "aws" {
  region = var.region
}

module "private_bucket" {
  source      = "../../modules/s3"
  bucket_name = "${var.project}-dev-private-bucket"
  tags = {
    Name = "${var.project}-dev-private-bucket"
  }
  public = false
}

module "public_bucket" {
  source      = "../../modules/s3"
  bucket_name = "${var.project}-dev-public-bucket"
  tags = {
    Name = "${var.project}-dev-public-bucket"
  }
  public = true
} 