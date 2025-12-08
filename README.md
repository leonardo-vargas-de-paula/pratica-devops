# 🚀 Prática DevOps

[![Terraform](https://img.shields.io/badge/Terraform-v1.0+-blueviolet?logo=terraform)](https://www.terraform.io/)
[![Docker](https://img.shields.io/badge/Docker-Containerized-blue?logo=docker)](https://www.docker.com/)
[![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)](https://aws.amazon.com/)
[![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-black?logo=github)](https://github.com/features/actions)

Um projeto prático de **DevOps** que demonstra a automatização completa da infraestrutura e deploy de uma aplicação web, combinando **Terraform**, **Docker**, **AWS** e **GitHub Actions**.

---

## 📋 Visão Geral

Este projeto implementa:

- ✅ **Infraestrutura como Código (IaC)** com Terraform
- 🐳 **Containerização** da aplicação com Docker
- ☁️ **Provisionamento automático** de recursos na AWS (EC2, ECR, S3)
- 🔄 **Pipeline CI/CD** com GitHub Actions
- 🌐 **Website estático** servido via Nginx

---

## 🛠️ Stack Tecnológico

| Tecnologia | Descrição |
|-----------|-----------|
| **Terraform** | Infraestrutura como Código (IaC) |
| **Docker** | Containerização da aplicação |
| **AWS EC2** | Servidores virtuais |
| **AWS ECR** | Container Registry |
| **AWS S3** | Armazenamento de arquivos |
| **GitHub Actions** | Automação CI/CD |
| **Nginx** | Web server |

---

<!-- ## 📁 Estrutura do Projeto -->
<!-- 
```
.
├── infra/                          # Código Terraform
│   ├── backend.tf                  # Configuração de estado remoto
│   ├── provider.tf                 # Configuração de providers
│   ├── ec2.tf                      # Instâncias EC2
│   ├── ecr.tf                      # ECR Repository
│   ├── ip_ssh.tf                   # Configurações de rede
│   └── README.md                   # Documentação da IaC
├── website/                        # Aplicação web estática
│   ├── index.html                  # Página principal
│   ├── css/
│   │   └── style.css               # Estilos
│   └── js/
│       └── script.js               # Scripts
├── Dockerfile                      # Configuração Docker
├── comandos-deploy-manual.ini      # Referência de comandos
└── README.md                       # Este arquivo
``` -->


## 🔄 Pipeline CI/CD com GitHub Actions

O projeto inclui automação com GitHub Actions que:

1. Provisiona toda a base de infra necessária
2. Permite que os jobs sejam rodados via input ( garantia para evitar possíveis cobranças )

---

## 📦 Recursos AWS Criados

| Recurso | Descrição |
|---------|-----------|
| **EC2** | Instância para rodar a aplicação |
| **ECR** | Repositório privado de containers |
| **S3** | Armazenamento (para o estado da infra) |
| **VPC/Security Groups** | Configuração de rede e segurança |


---

