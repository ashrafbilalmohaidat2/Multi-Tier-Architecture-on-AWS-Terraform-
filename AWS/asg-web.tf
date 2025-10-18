resource "aws_autoscaling_group" "web-asg" {
  name                 = var.auto-scaling-group-web
  desired_capacity     = 2
  max_size             = 4
  min_size             = 1
  target_group_arns = [aws_lb_target_group.target-group-web.arn]
  health_check_type = "EC2"
  vpc_zone_identifier  = [aws_subnet.web-subnet1.id, aws_subnet.web-subnet2.id]


  launch_template {
    id      = aws_launch_template.web-launch-template.id
    version = "$Latest"
  }
}