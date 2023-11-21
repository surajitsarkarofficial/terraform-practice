terraform {
  backend "s3" {
    bucket = "terraform-state-file-001"
    key = "terraform.tfstate"
    region = "ap-south-1"   
    access_key = ""
    secret_key = "" 
  }
}