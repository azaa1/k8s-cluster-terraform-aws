#!/bin/bash

kops create cluster --name=devmyterraform.com \
--zones="eu-west-1a,eu-west-1b,eu-west-1c" \
--node-size="t2.micro" \
--master-size="t2.micro" \
--master-zones="eu-west-1b,eu-west-1a,eu-west-1c" \
--networking="weave" \
--topology="private" \
--bastion="true" \
--dns="private" \
--state="s3://devmyterraform.com" \
--out=. \
--target=terraform
