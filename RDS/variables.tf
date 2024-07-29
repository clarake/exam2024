variable "db_instance_identifier" {
  description = "Identifier for the RDS instance"
  type        = string
  default     = "my-rds-instance"
}

variable "db_instance_class" {
  description = "Class of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "db_engine" {
  description = "Engine for the RDS instance"
  type        = string
  default     = "postgres"  # Example: 'postgres', 'mysql', etc.
}

variable "db_engine_version" {
  description = "Engine version for the RDS instance"
  type        = string
  default     = "13.4"  # Example: '13.4' for PostgreSQL
}

variable "db_name" {
  description = "Name of the database to create"
  type        = string
  default     = "mydatabase"
}

variable "db_username" {
  description = "Username for the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
}

variable "vpc_id" {
  description = "VPC ID where the RDS instance will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the RDS instance"
  type        = list(string)
}

variable "db_security_group_ids" {
  description = "List of security group IDs for the RDS instance"
  type        = list(string)
}
