provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAZDX23APKHT3FLVKJ"
  secret_key = "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"
}

# resource "<provider>_<resource_type>" "name" {
#     config options.....
#     key = "value"
#     key2 = "another value"
    
# }
####create an aws instance#####
resource "aws_instance" "first-server" {
  ami  = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
  key_name = "phase-one.pem"


  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install nginx
              EOF
    
    tags = {
    Name = "ubuntu"
  }
}


###first vpc#####
resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    name = "production"
  }
}
###creating a subnet
resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "prod-subnet"
  }
}

####second vpc######
# resource "aws_vpc" "second-vpc" {
#   cidr_block = "10.1.0.0/16"
#   tags = {
#     name = "Dev"
#   }
# }

####resource "aws_subnet" "subnet-2" {
#   vpc_id     = aws_vpc.second-vpc.id
#   cidr_block = "10.1.1.0/24"
#   tags = {
#     Name = "dev-subnet"
#   }
# }















# ###creating a vpc 
# resource "aws_vpc" "prod-vpc" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#       Name = "production"
#     }
# }


# ###provinding a internet gateway
# resource "aws_internet_gateway" "gw" {
#   vpc_id = aws_vpc.prod-vpc.id

# }

# resource "aws_route_table" "prod-route-table" {
#   vpc_id = aws_vpc.prod-vpc.id

# #creating  a default route 
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.gw.id
#   }

#   route {
#     ipv6_cidr_block        = "::/0"
#     egress_only_gateway_id = aws_internet_gateway.gw.id
#     #our traffic from the subnet that's going to create can get out to the internet
#   }

#   tags = {
#     Name = "prod"
#   }
# }



# ###create a subnet 
# resource "aws_subnet" "subnet-1" {
#     vpc_id = aws_vpc.prod-vpc.id    
#     cidr_block = "10.0.1.0/24"
#     availability_zone = "ap-south-1"

#     tags = {
#       Name = "prod-subnet"
#     }
# }
