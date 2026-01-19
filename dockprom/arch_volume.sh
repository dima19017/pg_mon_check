# Бекапим данные с volume
## Grafana
docker run --rm \
  -v dockprom_grafana_data:/volume \
  -v $(pwd)/backup:/backup \
  alpine \
  tar czf /backup/grafana_data_backup.tar.gz -C /volume .

## Prometheus
docker run --rm \
  -v dockprom_prometheus_data:/volume \
  -v $(pwd)/backup:/backup \
  alpine \
  tar czf /backup/prometheus_data_backup.tar.gz -C /volume .

# Ресторим
