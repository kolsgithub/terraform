provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-0742b4e673072066f"
  instance_type = "t2.micro"
  subnet_id = "subnet-01b819b087f4713e5"
  tags = {
    Environment = "Development"
  }
}