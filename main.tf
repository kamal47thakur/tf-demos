provider "aws" {
  region = "ap-south-1" # Specify your desired AWS region
  profile = "default"
  }
resource "aws_instance" "jenkins" {
 ami           = "unknown"
 instance_type = "unknown"
}