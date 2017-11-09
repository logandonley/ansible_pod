FROM registry.hub.docker.com/williamyeh/ansible:centos7

RUN yum install git -y

WORKDIR /var/tmp

COPY instructions.txt /opt/ansible/

USER 1001

ENTRYPOINT tail -f /opt/ansible/instructions.txt
