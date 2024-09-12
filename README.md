# DOKS Observability Monitoring Stack with Prometheus, Grafana, Mimir, and Loki

This repository provides an easy-to-deploy setup of **Prometheus**, **Grafana**, **Mimir**, and **Loki** using Helm on a Kubernetes cluster. It enables monitoring and logging for your applications with a scalable backend using **Grafana Mimir**.

## Prerequisites

- A Kubernetes cluster (e.g., DigitalOcean Kubernetes)
- Helm installed on your local machine
- DigitalOcean Spaces or other S3-compatible storage for Mimir and Loki

## Quickstart

1. **Clone this repository**:

   ```bash
   git clone https://github.com/iambigmomma/DOKS-LGTM-Starter-Kit.git
   cd DOKS-LGTM-Starter-Kit
   ```

2. **Install Prometheus and Grafana**:

   ```bash
   ./setup-scripts/install-prometheus-grafana.sh
   ```

3. **Install Grafana Mimir**:

   ```bash
   ./setup-scripts/install-mimir.sh
   ```

4. **Install Loki for Log Aggregation**:

   ```bash
   ./setup-scripts/install-loki.sh
   ```

5. **Install Tempo for Tracing**:

   ```bash
   ./setup-scripts/install-tempo.sh
   ```

6. **Access Grafana**:
   - Get the Grafana service IP:
     ```bash
     kubectl get svc -n monitoring grafana
     ```
   - Visit `http://<GRAFANA_IP>:<PORT>` and log in using the default credentials:
     - Username: `admin`
     - Password: `admin`

## Custom Configurations

- Customize the configurations in the `configs/` directory to match your environment.
- The `values.yaml` files for each Helm chart are provided for fine-tuning.

## Architecture

- **Prometheus**: Used for scraping metrics and sending them to **Mimir**.
- **Grafana**: Visualizes metrics and logs.
- **Mimir**: Stores Prometheus metrics in S3-compatible storage.
- **Loki**: Aggregates logs for application observability.
- **Tempo**: Collects distributed traces for better tracking of requests across services.

## Troubleshooting

- If you run into issues with the installation, check the logs of each pod:
  ```bash
  kubectl logs <pod-name> -n <namespace>
  ```

## Contributing

If you'd like to contribute to this project, feel free to open a PR with any improvements or suggestions. We welcome all types of contributions!

## License

This repository is licensed under the [MIT License](LICENSE).
