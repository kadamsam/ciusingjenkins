#!/bin/bash

#  Install required software for CI/CD setup. We leave this with you to decide what is important.
USERNAME=ec2-user
HOSTS="ec2-13-56-149-218.us-west-1.compute.amazonaws.com"
SCRIPT="sh install/install.sh"
ssh -i key/aws-sameer-uswest-1.ppk -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"

#  Push the 'Jenkinsfile' to Jenkin master
