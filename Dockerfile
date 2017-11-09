FROM registry.hub.docker.com/williamyeh/ansible:centos7

RUN yum install git -y

WORKDIR /opt/ansible

COPY instructions.txt /opt/ansible/

RUN chown -R 1001:root /opt/ansible

RUN chmod -R 755 /opt/ansible

USER 1001

ENTRYPOINT tail -f /opt/ansible/instructions.txt
