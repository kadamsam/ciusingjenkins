# Project Title

Service Reliability Engineer - Technical Test

## Getting Started

task is to configure server: preferably using AWS/Azure free tier or vagrant box.

· Server needs to serve:
	o    The dev environment
	o    And host tools required for CI/CD.

· Write script to

		o    Install required software for CI/CD setup. We leave this with you to decide what is important.
		o    Set up CI to fetch the codebase from https://github.com/ahfarmer/emoji-search.git  and package it for deployment.
		o    Deploy and launch the application in dev environment for every new commit or every 6 hours.

### Approach
As personal laptop is still 32 bit, so had to give up local option of Vagrant and Virtualbox combinations.
So decided to go with AWS EC2 instance for server configurations.

Jenkins was obvious choice for CI and Ansible for CD, with no cost involved

Dockers leveraged for Jenkins Master/Slave, and would have leveraged everything as a containers, build slaves, test clients




### Prerequisites

AWS account, Knowledge, And dont give it up attitude

### Setup

0. Used personal AWS account, which is beyond freeware

1. Created RHEL EC2 instance t2.micro
	1.1 Update the AMI
	1.2 get the Dockers latest. and all required modules
	1.3 sudo usermod -a -G docker ec2-user

[things pushed in the interest of file] Can convert Infra as a code, for AWS EC2 instance using Ansible, 
					cloudFormation combinations

2. Jenkin master - used Docker
	2.1 running docker instance
		docker run -u root --rm -d -p 8080:8080 -p 50000:50000 -v jenkins-data:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkinsci/blueocean
	2.2 Mapped the local storage as want to shutdown the instance to save AWS cost
[things pushed in the interest of file] Complete Dockefile with build instrucitons from Docker-compose
	2.3 opened the port 8080. from security perspective we must restrict to limited subnet. For te
	2.4 Unlocked the Jenkins
		dfb5abfa5bc146f1bf9e3113ac4a5a3f
		got the password using docker log command

	2.5 Using Blue Ocean Web interface to Jenkins, created pipeline

3. Jenkins Slave's 
[things pushed in the interest of file] was planning to add docker based slaves in jenkins  hit some issues

So decided to takeup the RHEL node and add it as a slave, which is configured to setup all development and build env
Otherwise it would be bad that using Docker for Master and EC2 for slaves ( as i have to move on to complete the dev env)


4. Developing pipeline using Jenkinsfile so that can be managed as a code
	Please see checked in file
	Ensured that it runs on specific agents where toolchain is available -  agent { label "reactJS" }
        
	MOdular phases            
				stage('Checkout') {
  - to clone git repo               

           			stage('Build') {
     - all build instructions
				stage('Test') {
      - all unit test cases        
				stage('Deploy') {
    - finally deployment, webservice would be available        

5. wrapper scripts to setup build, test and Deploy will be invoked from Stage of Jenkins file

## Running the tests

Mainly unit testing by using Simple curl based command to check http urls 

### Details

Jenkins Server - http://13.56.149.218:8080
Github 		- https://github.com/kadamsam/ciusingjenkins


### Logs
Attaching logs 

## Deployment

using deploy script, which is more of wrapper

## Built With
AWS EC2, Dockers, Jenkins, shell scripting

## Acknowledgments

* Google
* Inspiration
* AWS





6. 

7. 




