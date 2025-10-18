resource "aws_security_group" "sg-alb-web" {
    name        = var.alb-sg-web
    description = "Security group for ALB"
    vpc_id      = aws_vpc.vpc.id

ingress {
    description = "HTTP From Internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

tags = {
    Name = var.alb-sg-web
}
}