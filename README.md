# Infrastructure

Este repositório contém os arquivos Terraform para provisionar a infraestrutura

## Estrutura de Pastas

- `terraform/`: Contém os arquivos Terraform para configurar a infraestrutura na AWS.
## Passos para Provisionamento

1. Clone este repositório:
    ```bash
    git clone https://github.com/your-username/DescoShop-Infrastructure.git
    cd descomplica/terraform
    ```

2. Inicialize o Terraform:
    ```bash
    terraform init 
    ```

3. Aplique as configurações:
    ```bash
    terraform plan -var-file="arquivo de variáveis"
    terraform apply -var-file="arquivo de variáveis"
    ```

## Observações

- Certifique-se de ter configurado suas credenciais AWS corretamente antes de rodar o Terraform.
- Revise as variáveis e ajuste conforme necessário.
