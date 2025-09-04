terraform {
  backend "s3" {
    bucket         = "task6-terraform-state-bucket" 
    key            = "arch2/terraform.tfstate"       
    region         = "us-east-1"                   
    dynamodb_table = "terraform-lock-table"         
    encrypt        = true
  }
}
