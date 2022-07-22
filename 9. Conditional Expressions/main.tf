#istest = true  -->   test environment
#
#istest = false -->   prod environment

###########################################################################################
# Example - 1
###########################################################################################

## Below is the variables blocks
#variable "istest" {
#  default = false
#}
#
## Below is the resource block which creates EC2 Instance
#resource "aws_instance" "test" {
#  count         = var.istest == true ? 3 : 0
#  ami           = "ami-098e42ae54c764c35"
#  instance_type = "t2.micro"
#}
#
#resource "aws_instance" "prod" {
#  count         = var.istest == false ? 1 : 0
#  ami           = "ami-098e42ae54c764c35"
#  instance_type = "t2.large"
#}

###########################################################################################
# Example - 2
###########################################################################################

## Below is the variables blocks
#variable "istest" {
#   default = "dobie"
#}
#
## Below is the resource block which creates EC2 Instance
#resource "aws_instance" "second_example" {
#  ami           = var.istest == "dobie" ? "ami-XXXXXXXXXXX" : "ami-XXXXXXXXXXX"
#  instance_type = "t2.micro"
#}