module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

#module "ec2_instance" {
#  source  = "terraform-aws-modules/ec2-instance/aws"
#  version = "~> 3.0"
#
#  name = "single-instance"
#
#  ami                    = "ami-ebd02392"
#  instance_type          = "t2.micro"
#  key_name               = "user1"
#  monitoring             = true
#  vpc_security_group_ids = [module.vpc.default_security_group_id]
#  subnet_id              = module.vpc.public_subnets
#
#  tags = {
#    Terraform   = "true"
#    Environment = "dev"
#  }
#}
