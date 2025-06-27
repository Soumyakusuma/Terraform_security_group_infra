resource "aws_security_group" "roboshop_sg" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  tags = merge(
    var.sg_tags,local.common_tags,{
        Name="${var.project}-${var.environment}-dev"
    }
 )

}

