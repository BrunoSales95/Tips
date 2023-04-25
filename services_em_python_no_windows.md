## Descrição
Muitas vezes não é possível criar um agendamento para aplicações, devido o tipo (API, EndPoints, serviços e outros). Sendo necessário criar serviços para deixar no ar, para isso pode se criar uma service no windows para rodar aplicações.


## Requisitos
- Instalar o nssm 

## Exemplos de uso
 ```
 nssm install "NOME_SERVICO "C:\Windows\py.exe" "D:\projeto\BitBucket\relatorio\script\relatorio_projeto.py"
 ```
 
 ```
 nssm install
 ```
 
 ## Observações
  Para acessar os serviços do windows basta acessar o gerenciador de Serviços do Windows (Iniciar -> Executar -> SERVICES.MSC) e validar se o serviço foi criado conforme a execução do nssm
 
## Referências
- https://medium.com/@m_ko/how-to-run-python-scripts-as-a-windows-service-979082706360

