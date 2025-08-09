 resource "aws_subnet" "PWIMS-PRIVATE" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "PWIMS-PRIVATE"
  }
}
 resource "aws_subnet" "PWIMS-PUBLIC" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "PWIMS-PUBLIC"
  }
 }

