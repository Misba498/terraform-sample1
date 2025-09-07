# VPC
resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  tags = { Name = var.vpc_name }
}

# Public Subnet
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone
  tags = { Name = "${var.vpc_name}-public-subnet" }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this.id
  tags = { Name = "${var.vpc_name}-igw" }
}

# Route Table
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.this.id
  tags = { Name = "${var.vpc_name}-public-rt" }
}

# Internet Access Route
resource "aws_route" "internet" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

# Route Table Association
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public_rt.id
}
