# resource "aws_lb" "_1" {
#   provider           = aws.australia
#   name               = "australia-lb"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group._1["australia-sg-lb"].id]
#   subnets            = aws_subnet._1.-p.id
# 
#   enable_deletion_protection = false
 # Lots of death and suffering here, make sure it's false
# 
#   tags = {
    # Name = "australia-lb"
#   }
# }
# 