resource "aws_subnet" "db-subnet1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.db-subnet-cidr-blocks[0]
  availability_zone       = var.availability-zones[0]
  map_public_ip_on_launch = false

  tags = {
    Name = "db-subnet1"
  }
}

resource "aws_subnet" "db-subnet2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.db-subnet-cidr-blocks[1]
  availability_zone       = var.availability-zones[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "db-subnet2"
  }
}