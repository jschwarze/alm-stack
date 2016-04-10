#!/bin/bash
. ./setenv.sh
set -x
# t2.micro, t2.small, t2.medium, t2.large,
# m4.large (2 CPU, 8 GB),
# m4.xlarge (4 CPU, 16 GB)
# m4.2xlarge (8 CPU, 32 GB)
# m4.4xlarge (16 CPU, 64 GB)
AWS_INSTANCE_TYPE=t2.medium

create_instance() {
  docker-machine ip delivery
  if [ $? -ne 0 ]; then
    docker-machine create --driver amazonec2 \
        --amazonec2-region eu-central-1 \
        --amazonec2-vpc-id $AWS_VPC_ID \
        --amazonec2-access-key $AWS_ACCESS_KEY_ID \
        --amazonec2-secret-key $AWS_SECRET_ACCESS_KEY \
        --amazonec2-instance-type $AWS_INSTANCE_TYPE \
        --amazonec2-zone $AWS_ZONE \
        --amazonec2-subnet-id $AWS_SUBNET_ID \
        delivery
  fi
  eval $(docker-machine env delivery)
}

echo "Creating docker host for build..."
create_instance
echo "Deploying all services..."
cd ..
docker-compose build
docker-compose -p alm up -d
