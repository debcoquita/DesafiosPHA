*** Settings ***

Library              SeleniumLibrary
Library    String


*** Variables ***
${NOME}        Debora

*** Test Cases ***

 Gerando um email com argumentos
    [Tags]           EMAIL
    Criando email    Debora    Lisboa    26


*** Keywords ***
Criando email
    [Arguments]    ${NOME}    ${SOBRENOME}    ${IDADE}
    ${EMAIL}       Set Variable    ${NOME}_${SOBRENOME}_${IDADE}@robot.com
    Log To Console  ${EMAIL}

    ${EMAIL}       Catenate    SEPARATOR=_   ${NOME}   ${SOBRENOME}   ${IDADE}@robot.com
    Log To Console  ${EMAIL}

    




