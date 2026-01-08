Infraestrutura AWS com Terraform (IaC)
Este projeto demonstra o provisionamento de uma infraestrutura em nuvem profissional na Amazon Web Services (AWS) utilizando Terraform como ferramenta de Infrastructure as Code (IaC).

🏗️ Visão Geral da Arquitetura
A infraestrutura é implantada na região us-east-1 (United States) e inclui:

VPC: Rede virtual isolada com bloco CIDR 10.0.0.0/16.

Public Subnet: Segmento de rede 10.0.1.0/24 com mapeamento automático de IP público.

Internet Gateway: Para permitir comunicação entre a VPC e a internet.

Security Group: * Entrada: Porta 22 (SSH) restrita apenas ao meu IP atual para máxima segurança.

Entrada: Porta 80 (HTTP) aberta para tráfego web futuro.

Saída: Tráfego livre para atualizações do sistema.

Instância EC2: Servidor Ubuntu 24.04 LTS rodando em hardware t3.micro (Elegível ao Free Tier).

🛠️ Tecnologias e Ferramentas
Cloud: AWS

IaC: Terraform

Sistema Operacional Local: Ubuntu via WSL2 no Windows 11.

Terminal: Windows Terminal.

Segurança: Windows Security e Chaves SSH (ED25519).

📸 Validação Visual
1. Provisionamento (Terraform Apply)
O Terraform gerenciou com sucesso a criação de 8 recursos integrados.

2. AWS Console
Confirmação da instância em estado Running com as tags e configurações de rede corretas (ID da conta ocultado para segurança).

3. Acesso Remoto (SSH)
Acesso bem-sucedido ao servidor nos United States via Windows Terminal, confirmando a integridade das chaves e das regras de firewall.