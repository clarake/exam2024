resource "aws_s3_bucket" "example" {
  bucket_prefix = "example-"  # Prefix for the bucket name

  bucket = var.bucket_name
  #acl    = var.bucket_acl

  #versioning {
    #enabled = var.versioning

}
 
