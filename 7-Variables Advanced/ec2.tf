# Below is the resource block which creates EC2 Instance
resource "aws_instance" "test" {
  ami           = var.ami_ids["linux"]
  instance_type = var.instance_type[0]
  tags = {
    Name = var.ec2_name_tag[0]
  }
}
resource "aws_instance" "test2" {
  ami           = var.ami_ids["ubuntu"]
  instance_type = var.instance_type[1]
  tags = {
    Name = var.ec2_name_tag[1]
  }
}
