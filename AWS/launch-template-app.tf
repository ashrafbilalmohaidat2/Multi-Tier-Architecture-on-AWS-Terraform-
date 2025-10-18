resource "aws_launch_template" "app-launch-template" {
  name   = var.launch-template-app
  image_id      = var.image-id
  instance_type = var.instance-type
  key_name      = var.key-name

  network_interfaces {
    device_index = 0
    security_groups       = [aws_security_group.asg-security-group-app.id]
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = var.app-instance-name
    }
  }  
}