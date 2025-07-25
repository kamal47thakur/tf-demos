provider "aws" {
  region = "ap-south-1" # Specify your desired AWS region
}

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0abcdef1234567890" # Replace with a valid AMI ID for your region
  instance_type = "t3.micro"             # Choose your desired instance type
  tags = {
    Name = "MyFirstTerraformEC2"
  }
}
