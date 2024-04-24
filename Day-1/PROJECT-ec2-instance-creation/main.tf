# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Specify the AMI ID
resource "aws_instance" "naina-terra" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0fc924225e1ced7f8"
  key_name      = "terra-keypair"
  tags = {
    Name = "naina-terra"
  }
}
