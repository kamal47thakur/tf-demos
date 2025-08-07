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
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "kamal-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
