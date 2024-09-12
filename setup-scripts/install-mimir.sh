#!/bin/bash

# Install Grafana Mimir using Helm
echo "Installing Grafana Mimir using Helm..."

# Add the Mimir repo and update
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

# Install the Mimir distributed Helm chart
helm install mimir grafana/mimir-distributed \
  --namespace mimir --create-namespace \
  -f ../configs/mimir-values.yaml \
  --wait

echo "Grafana Mimir installation completed."