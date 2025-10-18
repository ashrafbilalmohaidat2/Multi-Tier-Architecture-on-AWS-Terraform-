resource "aws_nat_gateway" "nat-gw1" {
    allocation_id = aws_eip.eip1.id
    connectivity_type = "public"
    subnet_id     = aws_subnet.web-subnet1.id
    
    tags = {
      Name = var.nat-gw
    }

    depends_on = [aws_internet_gateway.internet-gw]
}

resource "aws_nat_gateway" "nat-gw2" {
    allocation_id = aws_eip.eip2.id
    connectivity_type = "public"
    subnet_id     = aws_subnet.web-subnet2.id
    
    tags = {
      Name = var.nat-gw
    }

    depends_on = [aws_internet_gateway.internet-gw]
}