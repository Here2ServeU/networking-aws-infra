resource "aws_autoscaling_group" "asg" {
  name                 = "${var.company_name}-${var.environment}-asg"
  vpc_zone_identifier  = var.private_subnet_ids
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  health_check_type    = "EC2"
  force_delete         = true

  tag {
    key                 = "Name"
    value               = "${var.company_name}-${var.environment}-asg"
    propagate_at_launch = true
  }
}