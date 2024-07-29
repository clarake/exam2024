resource "aws_vpc" "example" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  tags = {
    Name = var.vpc_name
  }

  # Additional optional settings can be included here
}

resource "aws_vpc_dhcp_options" "example" {
  domain_name          = "example.com"
  domain_name_servers  = ["8.8.8.8", "8.8.4.4"]
  
  tags = {
    Name = "${var.vpc_name}-dhcp-options"
  }
}

resource "aws_vpc_dhcp_options_association" "example" {
  vpc_id          = aws_vpc.example.id
  dhcp_options_id = aws_vpc_dhcp_options.example.id
}

resource "aws_internet_gateway" "example" {
  vpc_id = aws_vpc.example.id

  tags = {
    Name = "${var.vpc_name}-internet-gateway"
  }
}
