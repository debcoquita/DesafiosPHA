*** Settings ***
Resource    webAutomation.robot
Library    SeleniumLibrary
***Variables***
${URL}         https://learningprime.com.br/
${BROWSER}     chrome


*** Test Cases ***
Cenario: Validando cadastro com sucesso no learningprime
    [Tags]        CADASTRO
    Dado que eu esteja na tela de cadastro
    e informe todos os dados necessarios
    Quando finalizar o cadastro
    Então devo ser direcionado para a tela home do site
    E a seguinte mensagem deve ser apresentada    Bem vindo! Seu cadastro foi feito com sucesso.
Cenario:fazendo login
    [Tags]       LOGIN
    dado que o cliente tenha realizado o cadastro com sucesso
    e realizer o logout
    quando tentar logar com o mesmo usuario cadastrado novamente
    entao o login devera ser realizado com sucesso




*** Keywords ***
##############################################################################
#          Cenario: Validando cadastro com sucesso no learningprime          #
##############################################################################
dado que eu esteja na tela de cadastro
    Wait Until Element Is Visible   xpath=//a[@href='/login']
    Click Element                    xpath=//a[@href='/login']

    Wait Until Element Is Visible    xpath=//a[@href='/signup']
    Click Element                    xpath=//a[@href='/signup']

    Wait Until Page Contains         Novo Cliente

e informe todos os dados necessarios
    Input Text                       id=spree_user_email                    robot.cursolasdasjlasd84321687@pha.com.br
    Input Text                       id=spree_user_password                 123456789
    Input Text                       id=spree_user_password_confirmation    123456789

quando finalizar o cadastro
    Click Element                    xpath=//input[@value="Criar" and @type="submit"]

Então devo ser direcionado para a tela home do site
    Wait Until Element Is Visible    xpath=//a[@href='/account']

###################################################################################
#                        cenario fazendo login                                    #
###################################################################################
dado que o cliente tenha realizado o cadastro com sucesso
  Wait Until Element Is Visible    xpath=//a[@href='/account']

e realizer o logout
    Click Element                 xpath=//a[@href='/sair']
    Title Should Be                  Learning Prime Store
    
quando tentar logar com o mesmo usuario cadastrado novamente
    Wait Until Element Is Visible   xpath=//
entao o login devera ser realizado com sucesso




