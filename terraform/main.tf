resource "aws_instance" "homologacao" {
  count = 1
  ami = "ami-00399ec92321828f5"
  instance_type = "t3.micro"
  key_name = "access-key-centos"
  subnet_id = "subnet-089f6375"
  vpc_security_group_ids = [aws_security_group.permitir_ssh_http.id]
  associate_public_ip_address = true
  tags = {
    Name = "TESTE-IA-${count.index}"
  }

  user_data = <<-EOF
    #!/bin/bash -xe
    sudo curl -fsSL https://get.docker.com/ | sh
    sudo systemctl enable --now docker
    sudo systemctl status docker
    sudo usermod -a -G docker ubuntu
  EOF

}

variable "centos_vpc_id" {
  default = "vpc-131c8378" # Orientações para copia da VPC ID abaixo.
}

variable "centos_tomcat_id" {
  default = "vpc-131c8378" # Orientações para copia da Subnet ID abaixo.
}

resource "aws_security_group" "permitir_ssh_http" {
  name        = "permitir_ssh"
  description = "Permite SSH e HTTP na instancia EC2"
  vpc_id      = var.centos_vpc_id

  ingress {
    description = "SSH to EC2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP to EC2"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "permitir_ssh_e_http"
  }
}
