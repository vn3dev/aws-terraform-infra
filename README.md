Check the english version [**here**](#en-english)!

# Infraestrutura AWS com Terraform

---

Este projeto constrói automaticamente um servidor web completo na nuvem da AWS. Em poucos segundos, o código cria uma rede privada segura, configura um computador virtual com travas de segurança modernas e já deixa um site pronto para rodar, eliminando a necessidade de qualquer configuração manual demorada no painel da AWS.

A utilização do Terraform assegura que todo o ambiente seja replicado com exatidão e conformidade técnica. Este método elimina falhas inerentes a processos manuais, garantindo que as configurações de rede, os parâmetros de segurança e o provisionamento de recursos sigam um padrão rigoroso. O resultado é uma infraestrutura estável, documentada e preparada para suportar aplicações web com controle total sobre o tráfego e os acessos.

## Arquitetura e Detalhes Técnicos

### 1. Rede
* **VPC** Implementação de uma rede isolada CIDR `10.0.0.0/16`.
* **Dynamic Availability Zones:** Uso de `Data Sources` para seleção automática da zona de disponibilidade.
* **Conectividade:** Configuração de **Internet Gateway** e **Route Tables**.

### 2. Segurança
* **IMDSv2:** Configuração obrigatória de tokens para acesso a metadados da instância.
* **Security Groups:** SSH (Porta 22) restrito ao meu IP e HTTP (Porta 80) aberto.
* **Gestão de Chaves:** Uso de **Key Pairs** (RSA/ED25519) integrados para acesso seguro via **SSH** pelo **WSL2 Ubuntu**.

### 3. Computação e Automação
* **EC2 Instance** Provisionamento de servidor **Ubuntu 24.04 LTS** utilizando filtros dinâmicos de AMI, rodando em hardware `t3.micro` - **Free Tier**.
* **User Data Scripting:** Automação completa do deploy do servidor Nginx durante o primeiro boot da instância.

## Tecnologias e Ferramentas
* **Cloud:** AWS
* **IaC:** Terraform
* **Local OS:** Ubuntu 24.04 LTS via **WSL2** no Windows 10.
* **Segurança:** **Windows Security** e Chaves SSH (ED25519) armazenadas no subsistema Linux.

---

## Snapshots

### 1. Provisionamento
O Terraform gerenciou com sucesso a criação de 8 recursos integrados.
![Terraform Apply](img/Terminal1.png)

### 2. AWS Console
Confirmação da instância `main-ec2-instance` em estado **Running**.
![AWS Console](img/Console1.png)

### 3. Acesso Remoto SSH
Sucesso no login via SSH no servidor nos **Estados Unidos**, confirmando a integridade das chaves e das regras de firewall.
![SSH Access](img/Terminal2.png)

---

## Como Rodar
1. **Configurar AWS CLI:** Execute `aws configure`.
2. **Variáveis:** Crie um arquivo chamado `terraform.tfvars` na raiz do projeto para configurar seu acesso:
    ```hcl
    my_public_ip    = "1.2.3.4"
    ```
3. **Comandos:**
   ```bash
   terraform init
   terraform plan
   terraform apply -auto-approve

## <a name="en-english"></a>English version:

# AWS Infrastructure with Terraform

---

This project automatically builds a complete web server in the AWS cloud. In seconds, the code creates a secure private network, configures a virtual computer with modern security locks, and sets up a website ready to run, eliminating the need for any time-consuming manual configuration in the AWS Management Console.

The use of Terraform ensures that the entire environment is replicated with precision and technical compliance. This method eliminates errors inherent in manual processes, ensuring that network configurations, security parameters, and resource provisioning follow a rigorous standard. The result is a stable, documented infrastructure prepared to support web applications with full control over traffic and access.

## Architecture and Technical Details

### 1. Networking
* **VPC:** Implementation of an isolated CIDR `10.0.0.0/16` network.
* **Dynamic Availability Zones:** Use of `Data Sources` for automatic selection of the availability zone.
* **Connectivity:** Configuration of **Internet Gateway** and **Route Tables**.

### 2. Security
* **IMDSv2:** Mandatory token configuration for accessing instance metadata.
* **Security Groups:** SSH (Port 22) restricted to my IP and open HTTP (Port 80).
* **Key Management:** Use of integrated **Key Pairs** (RSA/ED25519) for secure access via **SSH** through **WSL2 Ubuntu**.

### 3. Compute and Automation
* **EC2 Instance:** Provisioning of an **Ubuntu 24.04 LTS** server using dynamic AMI filters, running on `t3.micro` hardware - **Free Tier**.
* **User Data Scripting:** Full automation of the Nginx server deployment during the instance's first boot.

## Technologies and Tools
* **Cloud:** AWS
* **IaC:** Terraform
* **Local OS:** Ubuntu 24.04 LTS via **WSL2** on Windows 10.
* **Security:** **Windows Security** and SSH Keys (ED25519) stored in the Linux subsystem.

---

## Snapshots

### 1. Provisioning
Terraform successfully managed the creation of 8 integrated resources.
![Terraform Apply](img/Terminal1.png)

### 2. AWS Console
Confirmation of the `main-ec2-instance` in **Running** state.
![AWS Console](img/Console1.png)

### 3. Remote Access SSH
Successful SSH login to the server in the **United States**, confirming the integrity of the keys and firewall rules.
![SSH Access](img/Terminal2.png)

---

## How to Run
1. **Configure AWS CLI:** Run `aws configure`.
2. **Variables:** Create a file named `terraform.tfvars` in the project root to configure your access:
    ```hcl
    my_public_ip    = "1.2.3.4"
    ```
3. **Commands:**
   ```bash
   terraform init
   terraform plan
   terraform apply -auto-approve