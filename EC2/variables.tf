variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "ID of the AMI to launch"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the EC2 instance"
  type        = map(string)
  default     = {
    Name = "clarake_belle"
  }
}
