
    resource "aws_subnet" "PWIMS-PRIVATE" {
      vpc_id     = "vpc-0d5681e896c5a5820" # Replace with your VPC ID
      cidr_block = "10.0.1.0/24"          # Replace with the subnet's CIDR block
      tags = {
        Name = "PWIMS-PRIVATE" # Replace with existing tags
      }
    }

