resource "aws_security_group" "dynamicsg" {
  name        = "dynamic-sg"
  description = "Ingress for Vault"
  dynamic "ingress" {
    for_each = [8200, 8201,8300, 9200, 9500]
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}



#variable "sg_ports" {
#  type        = list(number)
#  description = "list of ingress ports"
#  default     = [8200, 8201,8300, 9200, 9500]
#}
#
#resource "aws_security_group" "dynamicsg" {
#  name        = "dynamic-sg"
#  description = "Ingress for Vault"
#  dynamic "ingress" {
#    for_each = var.sg_ports
#    iterator = port
#    content {
#      from_port   = port.value
#      to_port     = port.value
#      protocol    = "tcp"
#      cidr_blocks = ["0.0.0.0/0"]
#    }
#  }
#
#  dynamic "egress" {
#    for_each = var.sg_ports
#    iterator = port
#    content {
#      from_port   = port.value
#      to_port     = port.value
#      protocol    = "tcp"
#      cidr_blocks = ["0.0.0.0/0"]
#    }
#  }
#}
