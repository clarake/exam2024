variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "bucket_acl" {
  description = "The ACL (Access Control List) of the S3 bucket"
  type        = string
  default     = "private"  # Options: private, public-read, public-read-write, authenticated-read
}

variable "versioning" {
  description = "Whether to enable versioning on the S3 bucket"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the bucket"
  type        = map(string)
  default     = {
    Name = "my-s3-bucket"
  }
}
