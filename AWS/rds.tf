resource "aws_db_instance" "rds-db" {
allocated_storage      = 10
  db_name                = var.db-name
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = var.db-class
  username               = var.db-username
  password               = var.db-password
  parameter_group_name   = "default.mysql8.0"
  multi_az               = true
  db_subnet_group_name   = aws_db_subnet_group.subnet-grp.name
  vpc_security_group_ids = [aws_security_group.db-sg.id]
  skip_final_snapshot    = true
  publicly_accessible  = false
  
}