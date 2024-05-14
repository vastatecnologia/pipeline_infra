/*resource "aws_instance" "instance_01" {
  ami                         = "ami-0acccabdef8f5d644"
  instance_type               = "t2.medium"
  subnet_id                   = module.vpc-aws-module.subnet3_id
  vpc_security_group_ids      = [module.vpc-aws-module.security_group02_id]
  associate_public_ip_address = true

  tags = {
    Name       = "qa-fit"
    owner      = "romulo"
    managed-by = "terraform"
  }
}

resource "aws_eip" "ip_instance_01" {
  instance = aws_instance.instance_01.id
  domain   = "vpc"

  tags = {
    Name       = "elastic-ip-vm01-${var.environment}"
    owner      = "romulo"
    managed-by = "terraform"
  }
}*/