resource "aws_route_table" "private_route-table1" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block     = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat-gw1.id
    }
  
  tags = {
    Name = "private-route-table1"
  }
  
}

resource "aws_route_table" "private_route-table2" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block     = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat-gw2.id
    }
  
  tags = {
    Name = "private-route-table2"
  }
  
}

resource "aws_route_table_association" "app-subnet1-association" {
  subnet_id      = aws_subnet.app-subnet1.id
  route_table_id = aws_route_table.private_route-table1.id
}

resource "aws_route_table_association" "app-subnet2-association" {
  subnet_id      = aws_subnet.app-subnet2.id
  route_table_id = aws_route_table.private_route-table2.id
}