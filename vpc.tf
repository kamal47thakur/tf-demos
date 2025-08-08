     resource "aws_vpc" "PWIMS-VPC01" {
      cidr_block = "10.0.0.0/16" # Replace with your VPC's CIDR block
      tags = {
        Name = "PWIMS-VPC01" # Replace with your VPC's name tag
        Environment = "Production"
      }
    }