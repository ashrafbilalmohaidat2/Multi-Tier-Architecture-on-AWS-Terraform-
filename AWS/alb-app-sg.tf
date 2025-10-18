resource "aws_security_group" "alb-security-group-app" {
  name = var.alb-sg-app
  description = "Security group for the Application Load Balancer for app servers"
  vpc_id = aws_vpc.vpc.id

  ingress {
    description = "Allow HTTP traffic from Internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    security_groups = [aws_security_group.asg-security-group-web.id]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.alb-sg-app
  }
}