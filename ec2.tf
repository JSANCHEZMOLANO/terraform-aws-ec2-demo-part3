resource "aws_instance" "demo_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.ec2_key.key_name

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  subnet_id = aws_subnet.public_subnet.id

  tags = {
    Name = "terraform-ec2-demo"
  }
}

resource "aws_security_group" "ec2_sg" {
  name        = "ec2-demo-sg"
  description = "Allow SSH access"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}