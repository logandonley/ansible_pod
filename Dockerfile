FROM registry.hub.docker.com/williamyeh/ansible:centos7

RUN yum install git -y

WORKDIR /home/ansible

USER 1001

ENTRYPOINT tail -f /etc/*release
