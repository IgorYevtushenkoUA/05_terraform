terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}


resource "aws_instance" "NARUTO" {
  ami           = "ami-0e58172bedd62916b" 
  instance_type = "t3.micro"
  count         = 2

  tags = {
    Name = "Might_Guy"
  }
}