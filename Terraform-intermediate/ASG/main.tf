resource "aws_launch_configuration" "as-conf" {
  image_id        = var.ami-id
  instance_type   = var.instance_type
  security_groups = [var.security_id]
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "ASG" {
  name                 = "TF-ASG"
  min_size             = 2
  max_size             = 5
  desired_capacity     = 2
  health_check_type    = "EC2"
  launch_configuration = aws_launch_configuration.as-conf.name
  vpc_zone_identifier  = [var.subnet]
  lifecycle {
    create_before_destroy = true
  }
}