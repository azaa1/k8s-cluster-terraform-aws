terraform {
  backend "s3" {
    bucket = "devmyterraform.com"
    key = "cluster"
    region = "us-east-1" 
  }
}
