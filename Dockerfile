FROM aaronpederson/ubuntu

RUN ansible-galaxy install aaronpederson.grafana
COPY playbook.yml /etc/
RUN ansible-playbook /etc/playbook.yml

WORKDIR /opt/grafana/current
VOLUME ["/data"]
ENTRYPOINT ["/opt/grafana/current/grafana", "--config=/etc/grafana/grafana.ini", "web"]
EXPOSE 3000
