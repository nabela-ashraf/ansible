FROM ubuntu 
RUN apt-get update -y && apt-get install ssh -y && apt-get install sudo -y
RUN adduser ansible
RUN echo "ansible:123" | chpasswd
RUN usermod -aG sudo ansible
ENTRYPOINT service ssh restart && bash