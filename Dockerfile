FROM prom/prometheus:latest

RUN mkdir -p /prometheus-local/data
RUN chmod -R 777 /prometheus-local

CMD [ "--config.file=/etc/prometheus/prometheus.yml", \
      "--storage.tsdb.path=/prometheus-local", \
      "--web.console.libraries=/usr/share/prometheus/console_libraries", \
      "--web.console.templates=/usr/share/prometheus/consoles", \
      "--storage.tsdb.retention.time=1y" ]

