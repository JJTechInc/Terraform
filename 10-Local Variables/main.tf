###########################################################################################
# Example - 1
###########################################################################################
# Local Variables Block
locals {
  common_tags={
    Owner = "Devops Team"
    cs = "avinash@jjtechinc.co"
    time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  }
  prod_tags={
    Owner = "Prod Team"
    cs = "mamidi@jjtechinc.co"
    time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())

  }
  dev_tags={
    Owner = "dev Team"
    cs = "mamidi@jjtechinc.co"
    time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  }
}

# Below is the resource block which creates EC2 Instance
resource "aws_instance" "test1" {
   ami = "ami-XXXXXXXXXXXX"
   instance_type = "t2.micro"
  tags = merge(local.common_tags,{Name = "HelloWorld"})
}


resource "aws_instance" "test2" {
   ami = "ami-XXXXXXXXXXXX"
   instance_type = "t2.micro"
  tags = merge(var.env == "dev" ? local.dev_tags : local.prod_tags,{Name = "dev"})
}

resource "aws_instance" "test3" {
   ami = "ami-XXXXXXXXXXXX"
   instance_type = "t2.micro"
  tags = merge(local.common_tags,{Name = "common_tags"})
}


###########################################################################################
# Example - 2
###########################################################################################
#locals {
#  common_tags = {
#    Owner = "DevOps Team"
#    service = "backend"
#  }
#}
#
#
#resource "aws_instance" "app-dev" {
#   ami = "ami-XXXXXXXXXXXX"
#   instance_type = "t2.micro"
#   tags = local.common_tags
#}
#
#resource "aws_instance" "db-dev" {
#   ami = "ami-XXXXXXXXXXXX"
#   instance_type = "t2.small"
#   tags = local.common_tags
#}
#
#resource "aws_ebs_volume" "db_ebs" {
#  availability_zone = "us-west-2a"
#  size              = 8
#  tags = local.common_tags
#}