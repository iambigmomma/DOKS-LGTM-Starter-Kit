#!/bin/bash

# Install kube-prometheus-stack using Helm for Grafana and Prometheus
echo "Installing Prometheus and Grafana using Helm..."

# Add Helm repo for Prometheus and Grafana
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

# Install the kube-prometheus-stack
helm install prometheus grafana/kube-prometheus-stack \
  --namespace monitoring --create-namespace \
  -f ../configs/prometheus-values.yaml \
  --wait

echo "Prometheus and Grafana installation completed."