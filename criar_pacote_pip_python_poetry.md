# Usando Poetry para criar pacotes no pip install do Python

## Passo 1: Instalação do Poetry
Antes de começar, certifique-se de ter o Python instalado em sua máquina. Em seguida, instale o Poetry usando o gerenciador de pacotes pip com o seguinte comando:

`pip install poetry`

## Passo 2: Criando um novo projeto
Para criar um novo projeto com o Poetry, basta executar o seguinte comando no diretório em que deseja criar o projeto:

`poetry new nome_do_projeto`
Isso criará uma nova estrutura de diretórios para o seu projeto, juntamente com um arquivo pyproject.toml que contém as informações do projeto.

## Passo 3: Adicionando dependências
Para adicionar dependências ao seu projeto, basta executar o seguinte comando:

`poetry add nome_da_dependencia`

Isso adicionará a dependência ao seu arquivo pyproject.toml e instalará a dependência em seu ambiente virtual.

## Passo 4: Instalando as dependências
Para instalar todas as dependências do seu projeto, basta executar o seguinte comando:

`poetry install`
Isso instalará todas as dependências listadas no seu arquivo pyproject.toml em seu ambiente virtual.

## Passo 5: Executando o seu projeto
Para executar o seu projeto, basta executar o seguinte comando:

`poetry run python nome_do_arquivo.py`

Isso executará o arquivo nome_do_arquivo.py dentro do seu ambiente virtual.

## Passo 6: Publicando o seu projeto
Para publicar o seu projeto no PyPI, basta executar o seguinte comando:

`poetry publish`

Isso publicará o seu projeto no PyPI, tornando-o disponível para que outros possam instalar e usar em seus próprios projetos.
