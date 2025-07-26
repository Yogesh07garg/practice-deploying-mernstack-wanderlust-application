variable "ec2_volume_size" {
  default = 15
  type = number
}

variable "env" {
  default = dev
  type = string
}

variable "ec2_instance_type" {
  default = "t2.micro"
  type = string
}
