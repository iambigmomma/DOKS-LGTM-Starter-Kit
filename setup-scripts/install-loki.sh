#!/bin/bash

# Install Loki using Helm
echo "Installing Loki using Helm..."

# Add the Loki Helm chart repo and update
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

# Install the Loki Helm chart
helm install loki grafana/loki-distributed \
  --namespace loki --create-namespace \
  -f ../configs/loki-values.yaml \
  --wait

echo "Loki installation completed."