# Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region     = ""
}

# Local Variables Block
locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

# Below is teh Output blocks
output "timestamp" {
  value = timestamp()
}

output "formattedtimestamp" {
  value = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}


# Below is the variables blocks
variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-XXXXXXXXXXXX"
    "us-west-2" = "ami-XXXXXXXXXXXX"
    "ap-south-1" = "ami-XXXXXXXXXXXX"
  }
}

# Below is the resource block which creates EC2 Instance
resource "aws_instance" "myec2" {
  ami = "ami-XXXXXXXXXXXX"
  instance_type = "t2.micro"
  tags = {
    date_created = local.time
  }
}
