*** Settings ***

*** Variables ***

*** Test Cases ***
Contando a lista de FRUTAS
    [Tags]        FRUTA
    exibir lista de FRUTAS

*** Keywords ***

exibir lista de FRUTAS
    @{FRUTAS}    Create List        Banana    Manga    Acerola    Mangaba    Pitanga    Mamão    Pitomba
    FOR   ${FRUTA}  IN   @{FRUTAS}
        Log To Console    ${FRUTA}
    END
    

