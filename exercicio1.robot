*** Settings ***

Library              SeleniumLibrary
Library              String    

*** Variables ***
&{PESSOA}    
...    nome=Débora Lisboa    
...    idade=26
&{END}    
...     rua=Frei Miguelinho    
...     numero=299    
...     cep=5325813    
...     cidade=Igarassu    
...     Estado=Pernambuco    
...     Complemento=Sitio Viver2 Bl M Ap301

*** Test Cases ***
cenario: exibir dados pessoais no Console
    [tags]    DICIONARIO
    imprimir dados em linhas apartadas

*** Keywords ***
imprimir dados em linhas apartadas
    Log    Nome: ${PESSOA.nome}    
    Log    Idade: ${PESSOA.idade}
    Log    Rua: ${END.rua}    
    Log    Número: ${END.numero}  
    Log     CEP: ${END.cep}    
    Log    Cidade: ${END.cidade}    
    Log     Estado: ${END.Estado}    
    Log    Complemento: ${END.Complemento}
    

