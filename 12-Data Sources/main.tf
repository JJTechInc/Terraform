# Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region     = ""
}

# Below is the Data Sources Block
data "aws_ami" "app_ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}



#below is just an example which doesn't work
#data "aws_ami" "app_ami" {
#  most_recent = true
#  owners = ["464599248654"]
#
#  filter {
#    name   = "name"
#    values = ["golden*"]
#  }
#}

#data "aws_ami" "app_ami" {
#    most_recent = true
#
#    filter {
#        name   = "name"
#        values = ["*ubuntu*"]
#    }
#
#    filter {
#        name   = "virtualization-type"
#        values = ["hvm"]
#    }
#
#    owners = ["amazon"] # Canonical
#}
#
resource "aws_instance" "instance-1" {
    ami = data.aws_ami.app_ami.id
   instance_type = "t2.micro"
}

#output "test" {
#  value = data.aws_ami.app_ami
#}


#variable "bucketname" {
#  default = "avinash-del-test-1"
#}
#
#data "aws_s3_bucket" "mys3buck" {
#  bucket = var.bucketname
#}
#
#output "s3detailsid" {
#  value = data.aws_s3_bucket.mys3buck
#}
#output "s3detailsarn" {
#  value = data.aws_s3_bucket.mys3buck.arn
#}


#data --> borowing --> destroy (no)
#
#import --> owning --> update/destroy

