#Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "test" {
  ami = "ami-XXXXXXXXXX"
  instance_type = "t2.micro"
  tags = {
    Name="remote-exec-ec2"
  }
  key_name = "remote-exec"
  vpc_security_group_ids = ["sg-XXXXXXXXXX"]

  connection {
    type ="ssh"
    user = "ec2-user"
    private_key = file("./XXXXXXXXXX.pem")
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install nginx1",
      "systemctl start nginx",
      "systemctl status nginx"
    ]
  }
}