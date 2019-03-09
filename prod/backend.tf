terraform {
  backend "s3" {
    bucket = "prodmyterraform.com"
    key = "cluster"
    region = "us-east-1" 
  }
}
