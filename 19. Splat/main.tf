#splat expressons allows us to get a list of all the attributes

/*
provider "aws" {
  region     = "us-west-2"
}
resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}

*/

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "test" {
  count = 3
ami_id="ami-066333d9c572b0680"
instance_type="t2.medium"
  tags = {
    Name = "prod-ec2"
  }
}
