provider "aws" {

region = "us-east-1" 

  
}

resource "aws_instance" "ec2-demo" {

  instance_type ="t2.micro"
  ami ="ami-0b0dcb5067f052a63" 
  tags = {
    Name = "Terraform-demo"
    Owner = "ornella"
  }

  output "PRIVATE_IP" {
    value = aws_instance.ec2-demo.private_ip
  }
  output "ARN"{ 
    value = aws_instance.ec2-demo.arn
  }
  
}