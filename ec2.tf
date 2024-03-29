module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-03a0c45ebc70f98ea"
  instance_type          = "t2.micro"
  key_name               = "test1"
  monitoring             = false
  subnet_id              = "subnet-0a070c1dc78b28b3a"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}


