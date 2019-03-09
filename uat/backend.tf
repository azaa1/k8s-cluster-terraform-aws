terraform {
  backend "s3" {
    bucket = "uatmyterraform.com"
    key = "cluster"
    region = "us-east-1" 
  }
}
