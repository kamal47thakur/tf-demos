
module "ec2_instance" {
  region = "ap-south-1" # Specify your desired AWS region
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"
  ami           = "ami-0abcdef1234567890" # Replace with a valid AMI ID for your region
  instance_type = "t3.micro"
  key_name      = "kamal.key"
  monitoring    = true
  subnet_id     = "subnet-05c286cfb4e752dc1"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}