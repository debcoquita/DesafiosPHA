*** Settings ***

Library              SeleniumLibrary
*** Variables ***
${PARES} 

*** Test Cases ***
imprimindo numeros Pares
    [Tags]    CONTANDO
    exercicio dos numeros

    
*** Keywords ***
contando Pares
    ${PARES}    Evaluate    ${PARES}+1
	Set Test Variable    ${PARES}


exercicio dos numeros
    FOR     ${COUNT}     IN RANGE     0    11
		IF     ${COUNT}%2 == 0        contando Pares
    END
    Log To Console    ${PARES}          
    





