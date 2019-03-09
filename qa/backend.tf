terraform {
  backend "s3" {
    bucket = "qamyterraform.com"
    key = "cluster"
    region = "us-east-1" 
  }
}
