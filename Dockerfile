FROM aaronpederson/ubuntu-ansible
MAINTAINER aaron.pederson@gmail.com
VOLUME ["/data"]
RUN git clone git@github.com:aaronpederson/ansible-grafana.git /data
