resource "aws_instance" "site_server" {
  ami                    = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type          = "t3.micro"
  key_name               = "server-prod-pratica-devops"
  vpc_security_group_ids = [aws_security_group.site_sg.id]
  iam_instance_profile   = "ECR-EC2"

  tags = {
    Name        = "site_server"
    Provisioned = "Terraform"
  }
}

resource "aws_security_group" "site_sg" {
  name        = "site_sg"
  description = "Security group para o server"
  vpc_id      = "vpc-0be04a32025621b61"

  tags = {
    Name        = "site_sg"
    Provisioned = "Terraform"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.site_sg.id

  cidr_ipv4   = "<IP_pessoal>/32"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.site_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.site_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 443
  ip_protocol = "tcp"
  to_port     = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.site_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = -1
}