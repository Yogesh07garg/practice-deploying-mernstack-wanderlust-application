variable "ec2__volume_size" {
  default = 15
  type = number
}

variable "env" {
  default = dev
  type = string
}

variable "ec2_instnace_type" {
  default = "t2.micro"
  type = string
}
