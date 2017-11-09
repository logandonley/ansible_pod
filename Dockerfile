FROM registry.hub.docker.com/williamyeh/ansible:centos7

RUN yum install git -y

ENTRYPOINT tail -f /etc/*release
