resource "aws_key_pair" "my_key" {
  key_name = "${var.env}-terraform-key"
  public_key = ("terraform-key.pub")
   tags = {
    
    environment = var.env
  }

  
}
resource "aws_default_vpc" "my_vpc" {
  
}

resource "aws_security_group" "my_security_group" {
  vpc_id = aws_default_vpc.my_vpc.id
  name = " ${var.env}-security-group"

  ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    ingress{
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }


  ingress{
    from_port = 5000
    to_port = 5000
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    ingress{
    from_port = 27017
    to_port = 27017
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    ingress{
    from_port = 
    to_port = 
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
    
    
    egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }

     tags = {
    
    environment = var.env
  }
}

resource "aws_instance" "my_instance" {

  
  key_name = aws_key_pair.my_key.key_name
  vpc_security_group_ids = [aws_security_group.my_security_group.id]
  ami = "ami-0f918f7e67a3323f0"
  instance_type = var.ec2_instance_type

  root_block_device {
    volume_size = var.ec2__volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "terraform-instance"
    environment = var.env
  }
    
}
