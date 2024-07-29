terraform {
  required_version = ">= 1.0.0"  # Specify your required Terraform version

  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "terraform/state"
    region         = "us-west-2"  # Change to your desired region
    encrypt        = true
  }
}
