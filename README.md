# Docker_VM
Docker Virtual Machine for CSE 3320 development

## Contents of this Repository:

- Code - A shared directory for your code
- Dockerfile - Configuration file for this directory.

# Installing the VM
## Installing Docker
Go to https://www.docker.com/products/docker-desktop/ and install Docker Desktop


## Install git
If you do not have git installed on your computer go to https://git-scm.com/downloads and install it.


## Creating your workspace
1. Create a directory to hold your VM and code for your assignments
2. Clone this repository with:
``` git clone https://www.github.com/CSE3320/Docker_VM ```

## Setting up the VM
You will only need to do this once unless you delete your VM.

1. Open a command prompt or terminal and change to your Docker_VM directory
2. Linux and macOS: Create the VM with: ```docker run -it --name=cse3320 -d -v ${PWD}/Code:/home/cse3320 tbakker/cse3320```
   Windows: : Create the VM with: ```docker run -it --name=cse3320 -d -v "%cd%"/Code:/home/cse3320 tbakker/cse3320```

## Starting the VM
1. Type: ```docker start cse3320```

## Attaching to the VM ( Logging into your VM )
1. Type: ```docker attach cse3320```

## Stopping your VM
1. Type: ```docker stop cse3320```

## If you need to update your container to the latest
1. ``` docker stop cse3320```
2. ```docker system prune```
3. ```docker rmi $(docker images -a -q)```
4. ```docker run -it --name=cse3320 -d -v ${PWD}/Code:/home/cse3320 tbakker/cse3320```
5. ```docker start cse3320```
6. ```docker attach cse3320```
