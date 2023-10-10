provider "aws" {
  region = "us-east-2"
  #   access_key = ""
  #   secret_key = ""
}

resource "aws_instance" "intro" {
  ami                    = "ami-0310483fb2b488153"
  instance_type          = "t2.micro"
  availability_zone      = "ap-southeast-2a"
  key_name               = "kops-key"
  vpc_security_group_ids = ["sg-06b9e97c7fe17d4bb"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}