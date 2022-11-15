# Below is the resource block which creates EC2 Instance
resource "aws_instance" "test" {
  count = length(var.ec2_name_tag)

  ami           = var.ami_ids[count.index]
  instance_type = var.instance_type[count.index]
  tags = {
    Name = var.ec2_name_tag[count.index]
  }
}

