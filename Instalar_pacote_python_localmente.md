###  Descrição

Para algumas demandas no dia a dia, é necessário instalar pacotes de bibliotecas localmentes para executar scripts.
Para realizar instalações locais, basta seguir o passo a passo do procedimento.


###  Procedimentos
- Instalar o Git bash
- Criar uma pasta que seria instalada
- Abri o terminal do git Bash na pasta 
- Usar o comando `pip install -t $PWD pacote`
- Remova todas as pasta contendo `.info`
- Para criar Layer no AWS Lambda: adicionar os pacotes em uma pasta chamada `python` , zipar e enviar para a layer
