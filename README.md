# DevOps Production-Ready Project

Full-stack DevOps infrastructure with Terraform, Kubernetes, CI/CD, and Monitoring.

## 🏗️ Project Structure
```
devops-project-iac/
├── terraform/              # Infrastructure as Code
│   ├── vpc.tf             # VPC, Subnets, NAT
│   ├── ec2-devops-tools.tf # Jenkins, Nexus, SonarQube
│   ├── eks-cluster.tf     # Kubernetes cluster
│   └── ...
├── sample-java-app/        # Spring Boot application
│   ├── src/               # Java source code
│   ├── helm-chart/        # Kubernetes Helm chart
│   ├── Dockerfile         # Container image
│   └── Jenkinsfile        # CI/CD pipeline
└── monitoring/             # Observability stack
    ├── prometheus-values.yaml
    ├── loki-values.yaml
    └── alerting-rules.yaml
```

## 🚀 Technologies

- **IaC:** Terraform
- **Container:** Docker + Amazon ECR
- **Orchestration:** Kubernetes (EKS)
- **CI/CD:** Jenkins
- **Monitoring:** Prometheus + Grafana + Loki
- **Secrets:** AWS Secrets Manager + External Secrets Operator
- **Networking:** AWS VPC, ALB, Ingress
