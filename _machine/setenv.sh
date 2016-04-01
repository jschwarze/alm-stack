#!/bin/bash
AWS_ACCESS_KEY_ID=$(aws --profile kiwigrid configure get aws_access_key_id)
AWS_SECRET_ACCESS_KEY=$(aws --profile kiwigrid configure get aws_secret_access_key)
AWS_VPC_ID=vpc-46ce822f
AWS_SUBNET_ID=subnet-1e541165
AWS_ZONE=b
