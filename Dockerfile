FROM aaronpederson/ubuntu-ansible
MAINTAINER aaron.pederson@gmail.com
VOLUME ["/data"]
RUN ansible-galaxy install aaronpederson.grafana
COPY playbook.yml /tmp/
RUN ansible-playbook /tmp/playbook.yml

WORKDIR /opt/grafana/current
ENTRYPOINT ["/opt/grafana/current/grafana", "--config=/etc/grafana/grafana.ini", "web"]
EXPOSE 3000
