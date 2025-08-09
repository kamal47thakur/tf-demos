provider "aws" {
  region = "ap-south-1" # Specify your desired AWS region
  #profile = "default"
  }
resource "aws_instance" "jenkins" {
 ami           = "ami-0b32d400456908bf9"
 instance_type = "t3.micro"
  tags = {
     "Name": "jenkins"
 }
}