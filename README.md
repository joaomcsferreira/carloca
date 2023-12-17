# Sobre

Este é o projeto final referente ao módulo 3 do curso de Vem Ser Tech - Back End!, que tem como objetivo a criação do banco de dados para o sistema de aluguel de veículos denominado CARLOCA!

# Conteúdo

- [Requisitos globais](#requisitos-globais)
- [Primeiros passos](#primeiros-passos)
- [Instalação e configuração](#instalação-e-configuração)
- [Autor](#autor)

# Funcionalidades

### Requisitos funcionais:

- [x] **Um carro possui modelo montadora, cor e versão.**
- [x] **As cores de carro disponiveis são apenas branco, preto e prata.**
- [x] **Existem várias categorias de veiculos (hatch, sedam compacto, sedam médio, SUV, etc...)**
- [x] **Um cliente pode alugar um carro somente na modalidade "diária".**
- [x] **Um cliente não pode alugar mais de um carro.**
- [x] **Enquanto um carro estiver locado por um cliente não pode ser ofetado para outro.**
- [x] **O sistema deve manter o histórico dos clientes que locaram determinado carro.**
- [x] **O sistema deve manter o histórico de quantos quilometros o cliente rodou com o carro bem como a quilometragem atual de cada um dos carros.**
- [x] **Existem várias unidades da fraquia CARLOCA o sistema deve saber onde o carro foi locado e onde foi devolvido cada veículo.**

### Requisito não funcionais:

- [x] **Devem ser gerados inserts e selects que possibilitem validar cada um dos requisitos acima.**
- [x] **O exercicio deve ser desenvolvido considerando todos os principios de normalização de dados.**

# Requisitos globais

- Docker

# Primeiros passos

A seguir, estão os passos para instalar, configurar e executar este aplicativo utilizando Docker, para a execução manual desse projeto sem a utilização de Docker siga para o item [Execução Manual](#execução-manual).

# Instalação e configuração

```bash
# clonar o projeto.
https://github.com/joaomcsferreira/carloca.git

# entrar no diretório clonado.
cd carloca
```

Dentro da pasta raiz do projeto, execute:

```bash
# Construindo a imagem para o MySQL.

docker build -t mysql-image -f database/Dockerfile .
```

```bash
# Executando o contêiner criado.

docker run -p 3306:3306 -d --rm --name mysql-container mysql-image
```

```bash
# "Agora, o próximo passo é criar e popular o banco de dados, execute:"
# para Linux:
docker exec -i mysql-container mysql -uroot -ppassword < database/carloca_db.sql

# para Windows
Get-Content database/carloca_db.sql | docker exec -i mysql-container mysql -uroot -ppassword
```

# Execução Manual

# Autor

João Marcos C. Ferreira - Código e Documentação [Linkedin](https://www.linkedin.com/in/joao-mcf/)
