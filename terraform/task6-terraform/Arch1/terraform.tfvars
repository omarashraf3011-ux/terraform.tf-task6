vpc_cidr = "10.0.0.0/16"
vpc_name = "arch1-vpc"

public_subnet_cidr  = "10.0.1.0/24"
public_subnet_name  = "public-subnet"
private_subnet_cidr = "10.0.2.0/24"
private_subnet_name = "private-subnet"
az = "us-east-1a"

igw_name      = "arch1-igw"
public_rt_name = "public_rt"

eip_name = "arch1-nat-eip"
nat_name = "gw-NAT"

private_rt_name = "private-rt"

private_sg_name       = "arch1-private-sg"
ami_id                = "ami-0360c520857e3138f"
instance_type         = "t2.micro"
private_instance_name = "arch1-private-machine"
