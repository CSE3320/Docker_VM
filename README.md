# Docker_VM
Docker Virtual Machine for CSE 3320 development

# Installing the VM
## Installing Docker
Go to https://www.docker.com/products/docker-desktop/ and install Docker Desktop


# Install git
If you do not have git installed on your computer go to https://git-scm.com/downloads and install it.


# Creating your workspace
1. Create a directory to hold your VM and code for your assignments
2. Clone this repository with:
``` git clone https://www.github.com/CSE3320/Docker_VM ```

# Setting up the VM
You will only need to do this once unless you delete your VM.

1. Open a command prompt or terminal and change to your Docker_VM directory
2. Create the VM with: ```docker run -it --name=cse3320 -d -v ${PWD}/Code:/home/cse3320 tbakker/cse3320```
