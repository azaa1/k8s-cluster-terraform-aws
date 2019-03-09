#!/bin/bash

aws route53 create-hosted-zone --name qamyterraform.com \
--vpc VPCRegion=eu-west-1,VPCId=vpc-03c0e465 \
--caller-reference 2014-04-01-18:47
