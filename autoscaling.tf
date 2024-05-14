/*resource "aws_launch_template" "template_qa" {
  name = "template-qa-fit"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  image_id = "ami-0acccabdef8f5d644"

  instance_initiated_shutdown_behavior = "terminate"

  instance_type = "t2.medium"

  monitoring {
    enabled = true
  }

  network_interfaces {
    associate_public_ip_address = false
  }

  vpc_security_group_ids = [module.vpc-aws-module.security_group02_id]

  tag_specifications {
    resource_type = "instance"

    tags = {
      owner      = "romulo"
      managed-by = "terraform"
    }
  }
}

resource "aws_lb_target_group" "tg_tamplate" {
  name     = "target-group-lb"
  port     = 80
  protocol = "HTTP"
  vpc_id   = module.vpc-aws-module.vpc_id
}*/
