FROM registry.hub.docker.com/williamyeh/ansible:centos7

ENTRYPOINT tail -f /etc/*release
