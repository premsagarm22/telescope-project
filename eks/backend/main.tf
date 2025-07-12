# Configure the AWS Provider
provider "aws" {
  region  = "us-west-2"
}


resource "aws_s3_bucket" "example" {
  bucket = "pasew"

 lifecycle {
   prevent_destroy = false
 }
}


resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "terraform-statelock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "lockid"


  attribute {
    name = "lockid"
    type = "S"
  }

  }