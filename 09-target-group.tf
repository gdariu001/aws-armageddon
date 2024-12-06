locals {
  target-groups = { for k, v in var.vpcs : k => { "${k}-tg" = { port = 80, protocol = "HTTP" } } }
}

resource "aws_lb_target_group" "_1" {
  for_each    = local.target-groups.australia
  name        = each.key
  provider    = aws.australia
  port        = each.value.port
  protocol    = each.value.protocol
  vpc_id      = aws_vpc.australia-vpc.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name = each.key
  }
}

resource "aws_lb_target_group" "_2" {
  for_each    = local.target-groups.california
  name        = each.key
  provider    = aws.california
  port        = each.value.port
  protocol    = each.value.protocol
  vpc_id      = aws_vpc.california-vpc.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name = each.key
  }
}

resource "aws_lb_target_group" "_3" {
  for_each    = local.target-groups.hong-kong
  name        = each.key
  provider    = aws.hong-kong
  port        = each.value.port
  protocol    = each.value.protocol
  vpc_id      = aws_vpc.hong-kong-vpc.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name = each.key
  }
}

resource "aws_lb_target_group" "_4" {
  for_each    = local.target-groups.london
  name        = each.key
  provider    = aws.london
  port        = each.value.port
  protocol    = each.value.protocol
  vpc_id      = aws_vpc.london-vpc.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name = each.key
  }
}

resource "aws_lb_target_group" "_5" {
  for_each    = local.target-groups.new-york
  name        = each.key
  provider    = aws.new-york
  port        = each.value.port
  protocol    = each.value.protocol
  vpc_id      = aws_vpc.new-york-vpc.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name = each.key
  }
}

resource "aws_lb_target_group" "_6" {
  for_each    = local.target-groups.sao-paulo
  name        = each.key
  provider    = aws.sao-paulo
  port        = each.value.port
  protocol    = each.value.protocol
  vpc_id      = aws_vpc.sao-paulo-vpc.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name = each.key
  }
}

resource "aws_lb_target_group" "_7" {
  for_each    = local.target-groups.tokyo
  name        = each.key
  provider    = aws.tokyo
  port        = each.value.port
  protocol    = each.value.protocol
  vpc_id      = aws_vpc.tokyo-vpc.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name = each.key
  }
}


