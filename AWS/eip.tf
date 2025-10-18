resource "aws_eip" "eip1" {
  domain = "vpc"

  tags = {
    Name = "nat-epi-1"
  }
}

resource "aws_eip" "eip2" {
  domain = "vpc"

  tags = {
    Name = "nat-epi-2"
  }
}