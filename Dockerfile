FROM aaronpederson/ubuntu-ansible

RUN ansible-galaxy install aaronpederson.grafana
COPY playbook.yml /tmp/
RUN ansible-playbook /tmp/playbook.yml

WORKDIR /opt/grafana/current
VOLUME ["/data"]
ENTRYPOINT ["/opt/grafana/current/grafana", "--config=/etc/grafana/grafana.ini", "web"]
EXPOSE 3000
