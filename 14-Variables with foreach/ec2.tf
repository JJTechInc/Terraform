# Below is the resource block which creates EC2 Instance
resource "aws_instance" "test" {
  for_each = var.ami_ids
  ami           = each.value
  instance_type = var.instance_type[each.key]
  tags = {
    Name = var.ec2_name_tag[each.key]
  }
}

