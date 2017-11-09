FROM registry.hub.docker.com/williamyeh/ansible:centos7

RUN yum install git -y

WORKDIR /home/ansible

RUN chown -R 1001:1001 /home/ansible

USER 1001

ENTRYPOINT tail -f /etc/*release
