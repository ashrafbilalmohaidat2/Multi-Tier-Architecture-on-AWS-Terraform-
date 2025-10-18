resource "aws_subnet" "app-subnet1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.app-subnet-cidr-blocks[0]
  availability_zone       = var.availability-zones[0]
  map_public_ip_on_launch = false

  tags = {
    Name = "app-subnet-1"
  }
  
}

resource "aws_subnet" "app-subnet2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.app-subnet-cidr-blocks[1]
  availability_zone = var.availability-zones[1]
  map_public_ip_on_launch = false

  tags = {
    Name = "app-subnet-2"
  }
}