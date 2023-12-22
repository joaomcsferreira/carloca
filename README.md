# Sobre

Este é o projeto final referente ao módulo 3 do curso de Vem Ser Tech - Back End!, que tem como objetivo a criação do banco de dados para o sistema de aluguel de veículos denominado CARLOCA!

![Alt text](./image/carloca.drawio.svg)

# Conteúdo

- [Requisitos globais](#requisitos-globais)
- [Primeiros passos](#primeiros-passos)
- [Instalação e configuração](#instalação-e-configuração)
- [Criação Manual](#criação-manual)
- [Selects e Querys](#selects-e-querys)
- [Autor](#autor)

# Requisitos globais

- Docker

# Primeiros passos

A seguir, estão os passos para instalar, configurar e executar este aplicativo utilizando Docker, para a execução manual desse projeto sem a utilização de Docker siga para o item [Criação Manual](#criação-manual).

# Instalação e configuração

```bash
# clonar o projeto.
https://github.com/joaomcsferreira/carloca.git

# entrar no diretório clonado.
cd carloca
```

Dentro da pasta raiz do projeto, vamos construir a imagem para o MySQL, execute:

```bash
docker build -t mysql-image -f Dockerfile .
```

Executando o contêiner criado, execute:

```bash
docker run -p 3306:3306 -d --rm --name mysql-container mysql-image
```

Agora, o próximo passo é criar e popular o banco de dados, execute:

```bash
# para Linux:
docker exec -i mysql-container mysql -uroot -ppassword < database/carloca-database.sql

# para Windows
Get-Content database/carloca-database.sql | docker exec -i mysql-container mysql -uroot -ppassword
```

### Utilização no Gerenciador de Banco de Dados

    - host: localhost
    - port: 3306
    - user: root
    - password: password
    - database: carloca

# Criação Manual

Para a utilização dos scripts desenvolvidos nesse projeto será necessário um gerenciador de bando de dados juntamente com o MySQL já devidamente instalado no computador, ao acessar esse gerenciador execute os script `carloca-created-database.sql` e `carloca-populated-database.sql` contidos no caminho `./database/scripts`.

# Selects e querys

Tendo o banco de dados já criado e populado com os dados necessários, você pode prosseguir com a execução do script `selects-and-checks.sql` localizado no diretório `./database/scripts` utilizando um gerenciador de banco de dados. Certifique-se de conectar a ferramenta ao banco de dados específico que contém as tabelas e dados relacionados.

1.  Abra o gerenciador de banco de dados de sua escolha (por exemplo, MySQL Workbench, pgAdmin, SQL Server Management Studio).
2.  Conecte-se ao servidor de banco de dados onde o seu banco de dados está hospedado.
3.  Abra o script no editor da ferramenta.
4.  Execute cada os scripts de formas individuais para verificar as informações e relacionamentos de cada select.

# Autor

João Marcos C. Ferreira - Código e Documentação [Linkedin](https://www.linkedin.com/in/joaomcsferreira/)
