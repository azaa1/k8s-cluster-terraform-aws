# Creating Cluster on Stage Environment
<!--- -->

#### STEP 1 : Change the following files based on your configurations. 

```
- Change the following lines in files:
  - create-s3-bucket.sh
      * s3://<enter-your-bucket-name>
      * --region <enter-region>
      
  - backend.tf
      * bucket = <enter-your-bucket-name>
      * region = <enter-region>
      
  - create-hosted-zone.sh 
      * --name  <enter-your-hosted-zone-name>  #NOTE IT SHOULD MATCH YOUR BUCKET NAME
      * --vpc VPCRegion=<enter-vpc-region>,VPCId=<enter-vpc-id>
      
      #The above information you can find on your AWS-Route53. 
  
  - create-cluster-tf.sh
      * -- name=<your-hosted-zone-name>
        -- zones=<availability-zone(a), availability-zone(b)>
        -- master-zones=<availibity-zone(a), availability-zone(b)>
        -- state="s3://<your-s3-bucket-name>"
```

#### STEP 2 : Change the permission, to make the file executable, on the following files. 

```
- chmod 744 create-s3-bucket.sh
- chmod 744 create-hosted-zone.sh
- chmod 744 create-cluster-tf.sh
```

#### STEP 3 : Create S3 bucket, hosted-zone and terraform.tf file. 

```
RUN

-bash create-s3-bucket.sh
-bash create-hosted-zone.sh
-bash create-cluster-tf.sh
```

#### STEP 3 : Run Terraform to create the Environment.

```
RUN

-terraform init
-terraform plan 
-terraform apply 
```
