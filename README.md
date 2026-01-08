[**Português**](#br-portugues) | [**English**](#en-english)

---

## <a name="br-portugues"></a>Português

# Infraestrutura AWS com Terraform (IaC)

---

Este projeto demonstra o provisionamento de uma infraestrutura em nuvem profissional na **Amazon Web Services (AWS)** utilizando **Terraform** como ferramenta de **Infrastructure as Code (IaC)**.

### 🏗️ Visão Geral da Arquitetura
A infraestrutura é implantada na região **us-east-1** (**United States**) e inclui:
* **VPC:** Rede virtual isolada com bloco CIDR `10.0.0.0/16`.
* **Public Subnet:** Segmento de rede `10.0.1.0/24` com mapeamento automático de IP público.
* **Internet Gateway:** Para permitir comunicação entre a VPC e a internet.
* **Security Group:** SSH (Porta 22) restrito ao meu IP e HTTP (Porta 80) aberto.
* **EC2 Instance:** Servidor Ubuntu 24.04 LTS rodando em hardware `t3.micro` (**Free Tier**).

### 🛠️ Tecnologias e Ferramentas
* **Cloud:** AWS
* **IaC:** Terraform
* **Local OS:** Ubuntu 24.04 LTS via **WSL2** no Windows 10.
* **Terminal:** **Windows Terminal**.
* **Segurança:** **Windows Security** e Chaves SSH (ED25519).

### 📸 Validação Visual
1. **Provisionamento:** O Terraform gerenciou a criação de 8 recursos integrados.
   ![Terraform Apply](img/Terminal1.png)
2. **AWS Console:** Instância `main-ec2-instance` em estado **Running**.
   ![AWS Console](img/Console1.png)
3. **Acesso Remoto:** Sucesso na conexão SSH via **United States**.
   ![SSH Access](img/Terminal2.png)

### 📖 Como Rodar
1. **Configurar AWS CLI:** Execute `aws configure`.
2. **Variáveis:** Crie um arquivo `terraform.tfvars` com seu IP: `my_public_ip = "seu.ip.aqui"`.
3. **Comandos:**
   ```bash
   terraform init
   terraform plan
   terraform apply

## <a name="en-english"></a>English

# AWS Infrastructure with Terraform (IaC)

---

This project demonstrates the deployment of a professional cloud infrastructure on **Amazon Web Services (AWS)** using **Terraform** as the **Infrastructure as Code (IaC)** tool.

## 🏗️ Architecture Overview
The infrastructure is deployed in the **us-east-1** region (**United States**) and includes:
* **VPC:** Isolated virtual network with `10.0.0.0/16` CIDR block.
* **Public Subnet:** `10.0.1.0/24` network segment with automatic public IP mapping.
* **Internet Gateway:** To enable communication between the VPC and the internet.
* **Security Group:** SSH (Port 22) restricted to my IP and HTTP (Port 80) open.
* **EC2 Instance:** Ubuntu 24.04 LTS server running on `t3.micro` hardware (**Free Tier** eligible).

## 🛠️ Technologies & Tools
* **Cloud:** AWS
* **IaC:** Terraform
* **Local OS:** Ubuntu 24.04 LTS via **WSL2** on Windows 10.
* **Terminal:** **Windows Terminal**.
* **Security:** **Windows Security** and SSH Keys (ED25519).

---

## 📸 Visual Validation

### 1. Provisioning (Terraform Apply)
Terraform successfully managed the creation of 8 integrated resources.
![Terraform Apply](img/Terminal1.png)

### 2. AWS Console
Confirmation of the `main-ec2-instance` in **Running** state.
![AWS Console](img/Console1.png)

### 3. Remote Access (SSH)
Successful SSH login to the server in the **United States**, confirming the integrity of keys and firewall rules.
![SSH Access](img/Terminal2.png)

---

## 📖 How to Run
1. **AWS CLI Setup:** Run `aws configure` in your terminal.
2. **Variables:** Create a `terraform.tfvars` file with your IP: `my_public_ip = "your.ip.here"`.
3. **Commands:**
   ```bash
   terraform init
   terraform plan
   terraform apply