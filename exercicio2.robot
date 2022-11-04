
*** Settings ***

Library              SeleniumLibrary

*** Variables ***
${IDADE}        26
${MENSAGEM}     Atenção! Você nasceu no século passado.
*** Test Cases ***

calculando ano de nascimento
    Log To Console    ${MENSAGEM}


*** Keywords ***

calculando ano de nascimento
    [Arguments]        ${IDADE}    
    ${MENSAGEM}        Set Variable If        ${IDADE} < 22       
    [Return]           ${MENSAGEM}
    