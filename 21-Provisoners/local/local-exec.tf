#Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "test" {
  ami = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
  tags = {
    Name="local-exec-ec2"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.test.public_ip} >> publicip.txt"
  }
}
