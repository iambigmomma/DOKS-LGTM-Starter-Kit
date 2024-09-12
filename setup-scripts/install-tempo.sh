#!/bin/bash

# Install Tempo using Helm

# Add the Grafana Helm repository
helm repo add grafana https://grafana.github.io/helm-charts

# Update Helm repositories
helm repo update

# Install Tempo in the monitoring namespace
helm upgrade --install tempo grafana/tempo-distributed --namespace monitoring --create-namespace \
  -f ../configs/tempo-values.yaml