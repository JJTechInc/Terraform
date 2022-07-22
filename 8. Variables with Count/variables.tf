# Below is the variables blocks
variable "ec2_name_tag" {
  default = ["name1", "name2","name3"]
}

variable "instance_type" {
            #   0          1          2
  default = ["t2.micro", "t2.medium","t2.nano"]
}

variable "ami_ids" {
  default = {
    0 = "ami-00f7e5c52c0f43726",
    1 = "ami-0892d3c7ee96c0bf7",
    2 = "ami-0892d3c7ee96c0bf7"
  }
}