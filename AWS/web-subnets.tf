resource "aws_subnet" "web-subnet1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.web-subnet-cidr-blocks[0]
  availability_zone = var.availability-zones[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "web-subnet-1"
  }
  
}

resource "aws_subnet" "web-subnet2" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.web-subnet-cidr-blocks[1]
  availability_zone = var.availability-zones[1]
  map_public_ip_on_launch = true
  
  tags = {
    Name = "web-subnet-2"
  }
}