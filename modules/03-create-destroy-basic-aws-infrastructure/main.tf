provider "aws" {
  region = var.region
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "example" {
  vpc_id = aws_vpc.example.id
  cidr_block = aws_vpc.example.cidr_block
}

resource "aws_instance" "example" {
  ami = "ami-00785f4835c6acf64"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.example.id
  tags = {
    Name = "akabanov-tf-tutorial"
  }
}