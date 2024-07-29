# RDS Subnet Group
resource "aws_db_subnet_group" "example_subnet_group" {
  name       = "example-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "example-subnet-group"
  }
}

# RDS Instance
resource "aws_db_instance" "example_db" {
  identifier        = var.db_instance_identifier
  instance_class    = var.db_instance_class
  engine            = var.db_engine
  engine_version    = var.db_engine_version
  #name        
  username          = var.db_username
  password          = var.db_password
  allocated_storage = 20  # Adjust as needed
  storage_type      = "gp2"  # General Purpose SSD

  db_subnet_group_name = aws_db_subnet_group.example_subnet_group.name
  vpc_security_group_ids = var.db_security_group_ids

  # Optional: Set backup and maintenance settings
  backup_retention_period = 7
  maintenance_window      = "Sun:05:00-Sun:06:00"

  tags = {
    Name = "example-db-instance"
  }
}
