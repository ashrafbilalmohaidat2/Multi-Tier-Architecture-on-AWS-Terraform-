resource "aws_launch_template" "web-launch-template" {
  name   = var.launch-template-web
  image_id      = var.image-id
  instance_type = var.instance-type
  key_name      = var.key-name

  network_interfaces {
    associate_public_ip_address = true
    security_groups            = [aws_security_group.asg-security-group-web.id]
  }

  user_data = base64encode(file("user-data-web.sh"))

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = var.web-instance-name
    }
  }
}