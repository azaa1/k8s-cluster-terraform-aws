terraform {
  backend "s3" {
    bucket = "stagemyterraform.com"
    key = "cluster"
    region = "us-east-1" 
  }
}
