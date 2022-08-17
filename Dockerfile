FROM debian:latest
ENV container docker

# Perform a package update
RUN apt-get -y update

# Add some familiar utilities
RUN apt-get -y install procps htop grep findutils iputils-ping iproute2 gcc gdb git valgrind 

RUN apt-get -y install openssh-server openssh-client passwd sudo; 
RUN mkdir /var/run/sshd

RUN ssh-keygen -y -t rsa -b 4096 -f /etc/ssh/ssh_host_rsa_key -N ''

RUN useradd --create-home -s /bin/bash vagrant
RUN useradd --create-home -s /bin/bash cse3320

RUN echo 'cse3320 ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/cse3320
RUN chmod 440 /etc/sudoers.d/cse3320
RUN mkdir -p /home/cse3320/.ssh
RUN chmod 700 /home/cse3320/.ssh
RUN chown -R cse3320:cse3320 /home/cse3320/.ssh
USER cse3320
RUN bash
