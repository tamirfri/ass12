provider "aws" {
  region = "eu-central-1"
  
}

resource "aws_instance" "web" {
  ami                    =   "ami-079024c517d22af5b"
  instance_type          =   "t2.micro"
  key_name               =   "awskeypair"
  vpc_security_group_ids = [ "launch-wizard-1" ]
}
