# Create a new instance of the latest Ubuntu 20.04 on an
# t3.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-0817d428a6fb68645"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform-example"
    }
}