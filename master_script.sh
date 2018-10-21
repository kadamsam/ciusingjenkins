#!/bin/bash

#  Install required software for CI/CD setup. We leave this with you to decide what is important.
USERNAME=ec2-user
HOSTS="ec2-13-56-149-218.us-west-1.compute.amazonaws.com"
SCRIPT="sh install/install.sh"
ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"


#  Set up CI to fetch the codebase from https://github.com/ahfarmer/emoji-search.git  and package it for deployment.

#  Deploy and launch the application in dev environment for every new commit or every 6 hours.
