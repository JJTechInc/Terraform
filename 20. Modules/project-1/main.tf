
#module "project1-ec2" {
#  source = "../modules/ec2"
#  ami_id=var.p1_ami_id
#  instance_type=var.p1_instance_type
#  ec2_name=var.p1_ec2_name
#}


module "mytest" {
  source = "../modules/ec2"

  ami_id        = var.ami_id
  ec2_name      = var.ec2_name
  instance_type = var.instance_type
}


module "mys3" {
  source      = "../modules/s3"
  bucket_name = var.bucket_name
}

provider "aws" {
  region = var.region
}