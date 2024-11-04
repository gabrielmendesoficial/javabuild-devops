# Projeto de Assistente IA para Call Centers
![Logo](https://cdn.discordapp.com/attachments/1292610820416475189/1300187723734192220/image-removebg-preview.png?ex=671fedad&is=671e9c2d&hm=0629e4e4ef73f71a6f03f8335fd4489a29f8b6bb14cc8bef3be01211271de0a9&)

## Membros

RM98214 - Gabriel Mendes Cirillo

RM99814 - Anna Soares

RM551423 - Izabelly Oliveira

RM99578 - Marcos Garrido

## Foco do Projeto
O objetivo deste projeto é desenvolver uma inteligência artificial (IA) que auxilia operadores de call center na geração de textos a partir de informações dos clientes. Isso permite que os operadores ofereçam um atendimento mais eficiente e personalizado.

## Problema a Resolver
Os operadores de call center frequentemente enfrentam desafios relacionados ao tempo de resposta e à personalização do atendimento. A falta de informações consolidadas sobre os clientes pode levar a interações menos satisfatórias e à perda de oportunidades de venda. A nossa solução visa otimizar esse processo.

## Consulte os outros Repositorios 

 - [Link para o repositorio de IA no Github](https://github.com/gabrielmendesoficial/cgeniusIA)

## Solução
A IA utiliza informações dos clientes, permitindo a geração automática de textos que ajudam os operadores a se comunicarem de forma mais eficiente. Por exemplo, a IA pode sugerir produtos com base nos interesses e histórico de compras do cliente, facilitando o processo de venda e aumentando a satisfação do cliente.

Neste projeto, você terá um CRUD com todos os dados já tratados pela IA e vinculado a Clientes.

## Custos de Operação da IA
Os custos de operação da IA incluem:

- **Infraestrutura de Servidor:** Custo mensal para manter servidores que hospedam o modelo de IA.
- **Treinamento do Modelo:** Investimentos em recursos computacionais para treinar a IA.
- **Manutenção e Atualizações:** Custos associados à atualização do modelo e manutenção contínua.

## Estrutura dos Dados
Os dados contém as seguintes colunas, cada uma com suas respectivas funções:

| Coluna                   | Descrição |
|--------------------------|-----------|
| ID                       | Identificador único do cliente |
| Nome                     | Nome completo do cliente |
| CPF                      | Cadastro de Pessoa Física |
| Cliente_ID               | Identificador único do cliente na base de dados |
| Produto                  | Produto adquirido pelo cliente |
| Categoria                | Categoria do produto |
| Data_Compra              | Data da compra realizada |
| Valor_Compra             | Valor total da compra |
| Quantidade_Parcelas      | Número de parcelas do pagamento |
| Data_Última_Compra       | Data da última compra realizada pelo cliente |
| Segmento                 | Segmento de mercado do cliente |
| Produto_Indicado         | Produto sugerido pela IA |
| Status_Indicação         | Status da indicação do produto |
| Interesses               | Interesses do cliente (ex: tecnologia, esportes) |
| Gastos_Mensais           | Valor médio gasto pelo cliente mensalmente |
| Salario                  | Salário do cliente |
| Tipo_Cartao_Credito     | Tipo do cartão de crédito do cliente |
| Gasto_Mensal_Cartao     | Gasto médio mensal no cartão de crédito |
| Viaja_Frequentemente     | Indica se o cliente viaja com frequência |
| Profissao                | Profissão do cliente |
| Renda_Mensal             | Renda mensal do cliente |
| Dependentes              | Número de dependentes do cliente |
| Gênero                   | Gênero do cliente |
| Data_Nascimento          | Data de nascimento do cliente |
| Idade                    | Idade do cliente |

## O que o código faz

Este código é uma aplicação backend desenvolvida em Java usando o framework Spring Boot. Ele foi criado para gerenciar operações relacionadas a clientes e compras em uma base de dados. Abaixo está um resumo das principais funcionalidades e camadas do sistema:

- Gestão de Clientes:

O código permite criar, ler, atualizar e excluir informações de clientes no sistema. Cada cliente possui atributos como nome, e-mail, telefone e outros dados pessoais, que são armazenados em um banco de dados.
Utiliza uma estrutura RESTful, onde cada cliente pode ser acessado por meio de um endpoint específico que segue convenções HTTP como GET, POST, PUT e DELETE.

- Gestão de Compras:

O sistema também permite registrar e gerenciar compras associadas aos clientes. Cada compra inclui informações como o valor, data, descrição, e cliente associado.
Estas operações seguem o mesmo padrão RESTful, oferecendo endpoints para criar, visualizar, atualizar e remover compras.

- Validação e Manipulação de Erros:

A aplicação inclui validações automáticas e manuseio de erros. Por exemplo, se um dado obrigatório estiver faltando, uma resposta de erro detalhada será retornada ao usuário.
Utiliza uma classe para lidar com exceções e formatar mensagens de erro, garantindo que o feedback ao usuário seja claro e padronizado.

- Integração com o Swagger:

O código é configurado para gerar uma documentação interativa com Swagger, permitindo que os desenvolvedores visualizem e testem os endpoints diretamente na interface do Swagger. Isso ajuda na compreensão e teste dos endpoints, facilitando o desenvolvimento e manutenção.

## Como Rodar a Aplicação Localmente

- Pré-requisitos

```text
- Java JDK 17 ou superior instalado
- Maven instalado para gerenciar dependências e build
- Uma IDE como IntelliJ IDEA, Eclipse ou VSC para abrir o projeto
```

- Clone o Repositório em seu diretorio desejado usando:
   
```bash
git clone https://github.com/gabrielmendesoficial/javabuild-devops
```

- Abrindo e iniciando o Projeto
Para que tudo funcione, basta ir nas extensões e instalar o Pack do Java e do Spring Boot

![Java](https://cdn.discordapp.com/attachments/1296217711789080597/1302918347150856244/image.png?ex=6729dcc5&is=67288b45&hm=9e52cd718af8113c2835aebd029a966d18f5bfbe2a75ceb6e4dc36993c2b29d7&)

![Spring](https://cdn.discordapp.com/attachments/1296217711789080597/1302918109585211412/image.png?ex=6729dc8c&is=67288b0c&hm=c819d79084678e9047807763bbaa0529570813d5176a21d5306d99f07dedad13&)

Caso seja preciso, a aplicação tambem possui a opção de iniciar usando o proprio H2, com isso seria necessario ir no "application.properties" e substituir a conexão do banco por essa configuração, comentando as configurações do banco de dados da Azure.

![Foto](https://cdn.discordapp.com/attachments/1296217711789080597/1302928789084442665/image.png?ex=6729e67e&is=672894fe&hm=deed0d0b8e098d19e2035c4eb9767870e164bfcfb1ec868b253ac0a9cb515a85&)

```code
# Para H2 Database (em memória)
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=password
spring.h2.console.enabled=true
````
Lembrando que para iniciar com as tabelas funcionando, seria necessario o uso do de um banco de dados para inserir as tabelas e os dados das tabelas.

Finalizado os passos acima, basta entrar na "MaindevApplication.java" e debuggar o Projeto
![Main](https://cdn.discordapp.com/attachments/1296217711789080597/1302929699936272404/image.png?ex=6729e757&is=672895d7&hm=df74659de7b49069570dea3417aff33a21977fef3e3701a5e3eee84d2d2899f4&)

- Acessando o Projeto

Utilize a URL: http://localhost:8080/swagger-ui/index.html
e acesse o sistema do swagger do projeto

## Conclusão
Este projeto visa revolucionar a forma como os operadores de call center interagem com os clientes, utilizando tecnologia de ponta para melhorar a eficiência e a qualidade do atendimento.
