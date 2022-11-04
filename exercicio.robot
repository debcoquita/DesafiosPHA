*** Settings ***

Library    String


*** Variables ***
${SIMPLES}
@{LISTA}
&{DICIONARIO}
${NOME}        Debora

*** Keywords ***
contar de 0 a 9

        FOR   ${count}    IN RANGE     0    10
                Log To Console      ${count}
        END

percorrer os itens de uma lista
    @{frutas}    Create List    morango    banana    abacaxi    uva    melancia
    FOR    ${FRUTA}    IN    @{frutas}
        Log    ${FRUTA}
        
    END
exercicio do FOR
    FOR    ${element}    IN    @{LISTA}
        Log    ${element}
        
    END

imprimir uma lista de paises
   @{PAISES}       Create List    USA    HOLANDA    MEXICO    ARGENTINA    JAPÃO
    FOR  ${PAIS}    IN     @{PAISES}
        Log To Console    Eu vou conhecer o ${PAIS}
    END
Tomar decisões
    IF    '${NOME}'=='Maria'
        Log To Console    Vou fazer isso só quando for a maria
    ELSE IF  '${NOME}'=='João'
        Log To Console    Vou fazer isso só quando for a João
    ELSE
        Log To Console    Vou fazer isso só quando eu quiser
    END

Exercicio do IF
    FOR  ${COUNT}    IN RANGE    0  11
        IF    ${COUNT}==5
            Log To Console    Estou no número: ${COUNT}
        ELSE IF    ${COUNT}==8
            Log To Console    Estou no número: ${COUNT}
        ELSE
            Log To Console    Eu não sou o número 5 e também não sou o número 8
        END
    END



*** Test Cases ***
contando de 0 a 9
    [Tags]     contar
        contar de 0 a 9
percorrer os itens de uma lista
    [Tags]     frutas
        percorrer os itens de uma lista

exercicio do FOR
    [Tags]   EXER 
        exercicio do FOR

imprimir lista de paises
    [Tags]   PAISES

Imprimindo o nome por decisão
    [Tags]        DECISAO
    Exercicio do IF



        
        
   
    
