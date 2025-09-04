module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs           = ["us-east-1a"]
  public_subnets = ["10.0.2.0/24"]



  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

module "web_server_sg" {
  source = "terraform-aws-modules/security-group/aws//modules/http-80"

  name        = "web-server"
  description = "Security group for web-server with HTTP and SSH access"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]  

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name                        = "arch2-server"
  associate_public_ip_address = true

  ami           = "ami-0360c520857e3138f"   
  instance_type = "t2.micro"
  key_name      = "Arch2-keypair"                 
  monitoring    = true

  subnet_id               = module.vpc.public_subnets[0]         
  vpc_security_group_ids  = [module.web_server_sg.security_group_id] 

  user_data = <<-EOF
              #!/bin/bash
               sudo apt update -y
               sudo apt upgrade -y

               sudo apt install -y nginx

               sudo systemctl start nginx
               sudo systemctl enable nginx
              EOF

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
