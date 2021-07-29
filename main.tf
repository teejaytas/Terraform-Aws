provider "aws" {
  region = "ap-south-1"
}
# Adding the Security Group

resource "aws_security_group" "ec2-Security" {
  name        = "ec2-security"

  ingress {
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 65535
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-security"
  }
}


resource "aws_instance" "second-server" {
  ami  = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
  key_name = "Pkey"


  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install nginx
              sudo service nginx start
              EOF
    
    tags = {
    Name = "instance_name"
  }
}

##

resource "aws_key_pair" "key-pair" {
  key_name   = "Pkey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDK7ZjVr5fz6J1ioY/bh/4XHSP5vTxxI9pCFL28yOqT5fuxGtGh5tky+RhFF+u7iAoznNRost8ec8U6pvihU2n+Zsd45UcOF2V1UtZTvTFkXy0qBMgKBjE6WySoffSeH+PP4kHm2DdNL2bWAmifUe3Y3+M0seWMO+fidh5lVT20LIUvVopIXYiukxkGLDUl7qRfzZaMD/HIIIYeNKM0IlfAjor+x0Ll0oyGEhujNXkuF+KGUYvO81dzcQ3CsCQpZyg8J5s+FpjzHYKL6bIIytcIBAT/Yk01hhSJRXqZMN1UQsFafhGaO6lH4pImrAEv784aFv59u3FRaeZDalMML5KBSwE+uo/pJ/i3zdtjkp8hjIFXmQyEXAYWh0mFVM6qImafWDdxDUTcNhpQSFTERnXfbVf0FepwQOyXrx9FAS+AUnq/nnW6xaTlTLcMRTFxhOMBLP6zT6KcZAA87UwOhynfLYedlnQ31U4nK/yxBoIZ0ITWGA8RO9gq0aL6uYmFSuM= sigmoid@sv-lap-0090"

}

##