resource "aws_instance" "bastion1" {
  ami                    = var.image-id
  instance_type          = var.instance-type
  subnet_id              = aws_subnet.web-subnet1.id
  security_groups        = [aws_security_group.bastion_sg.id]
  key_name               = var.key-name  
  associate_public_ip_address = true

  tags = {
    Name = "bastion-host-public-subnet1"
  }
}


resource "aws_instance" "bastion2" {
  ami                    = var.image-id
  instance_type          = var.instance-type
  subnet_id              = aws_subnet.web-subnet2.id
  security_groups        = [aws_security_group.bastion_sg.id]
  key_name               = var.key-name  
  associate_public_ip_address = true

  tags = {
    Name = "bastion-host-public-subnet2"
  }
  
}
