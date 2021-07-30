variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "ami" {
	default = "ami-0c1a7f89451184c8b"
}

variable "instance_type" {
	default = "t2.nano"
}
































































































########################################
# Adding the Security Group

# resource "aws_security_group" "ec2-Security" {
#   name        = "ec2-security"

#   ingress {
#     from_port        = 8080
#     to_port          = 8080
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 65535
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "ec2-security"
#   }
# }
#################################################










##
# resource "aws_default_vpc" "default" {
#   tags = {
#     Name = "Default VPC"
#   }
# }
################################
# resource "aws_key_pair" "key-pair" {
#   key_name   = "keyfour"
#   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1KM2qHp5Dfq1QwiZyaiIRGjJ1SjDn3EqMG09QGa5XY69Vohb5S8bKGaO3pb8iGOTR4shJ3F4d1ytRmk+o7edMwe/x7ozK9yuWiviv36V0xKgT1/i/4CISfiJ06WKwUorF9SHcTrLPpGBIX6XK7qyNh4B74l6iP6qUEt5fJmPCu5ualT2+XxQ1EMYOVURuxOnDGfyL/ll/ezDpZK9UBE6Mqorjqhg5Wayc6CXaOSJ1py8jXk14VB7mYfexJI19VPh8ONzH/mCdIVJuL2xwue1I6lLq90n7bluJSrduJ7hoxmCx5qy2jMoevwk7YpNYUfl67suUk1vxtZjtSzU3y6aCYYQ1PnEv9CiTwLE6cRl63/3/NxYs//AN08+BPGk6NmSmrvOdi+V59hm6KVsbRykZGK0pzpZmMp/Pi8HpMTIBGmHJPKad4mSstqUzAennfAyMypI6Txnnp9g5Gjpm2nrhehWqbln9FRRnfFkNtKLBtUOtlQIZwGwrTYqLkLznL+M= sigmoid@sv-lap-0090"
# }
##