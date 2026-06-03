resource "aws_instance" "bastion" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name               = var.key_name

  tags = {
    Name = "bastion-devops-control-node"
  }
}

resource "aws_instance" "app1" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_subnet_1.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  key_name               = var.key_name

  tags = {
    Name = "application-node-1"
  }
}

resource "aws_instance" "app2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_subnet_2.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  key_name               = var.key_name

  tags = {
    Name = "application-node-2"
  }
}

resource "aws_instance" "database" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_subnet_1.id
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  key_name               = var.key_name

  tags = {
    Name = "postgresql-database-node"
  }
}