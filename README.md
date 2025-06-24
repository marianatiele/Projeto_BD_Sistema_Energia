# Projeto de Banco de Dados PostgreSQL para Gestão de Energia – ENGE

##  Descrição

Este projeto apresenta a modelagem de banco de dados em PostgreSQL para um sistema de gestão de energia da empresa ENGE. O modelo está normalizado até a 3ª Forma Normal (3FN), garantindo organização eficiente dos dados relacionados ao consumo, medições e operações do sistema energético, além de evitar redundâncias e facilitar a manutenção.

## Tecnologias Utilizadas

- Sistema Gerenciador de Banco de Dados - PostgreSQL
- Linguagem SQL
- brModelo
- DBeaver
  
 ## Principais entidades do sistema
 
- **Cliente**: Pessoa física  que consome energia.
- **Funcionário**: Responsável por atividades como instalação de medidores e leitura de consumo.
- **Medidor**: Equipamento instalado em cada unidade consumidora, com leituras periódicas.
- **Conta**: Documento emitido mensalmente com base na leitura do medidor.
- **Pagamento**: Registro do pagamento de uma conta por parte do cliente.
  
## Modelo Lógico 
![image](https://github.com/user-attachments/assets/215659b4-7f7a-44cd-afc2-681587f5baff)


## Diagrama
![image](https://github.com/user-attachments/assets/8c6201d8-c5a4-41fe-acfa-3d17cd1f9736)


## Como Executar

1. Clone este repositório:
   ```bash
   git clone https://github.com/marianatiele/Projeto_BD_Sistema_Energia.git

2. Acesse a pasta
    ```bash
   cd Projeto_BD_Sistema_Energia

3. Execute o script SQL de criação do banco de dados
   No PostgreSQL(pgAdmin) ou DBeaver
   
## Contribuindo
Contribuições são bem-vindas! Sinta-se à vontade para abrir Issues, propor melhorias ou enviar Pull Requests com correções e novos recursos. 



