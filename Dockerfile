FROM registry.hub.docker.com/williamyeh/ansible:centos7

RUN yum install git -y

WORKDIR /home/ansible

COPY instructions.txt /home/ansible/

RUN chown -R 1001:root /home/ansible

RUN chmod -R 755 /home/ansible

USER 1001

ENTRYPOINT tail -f /home/ansible/instructions.txt
