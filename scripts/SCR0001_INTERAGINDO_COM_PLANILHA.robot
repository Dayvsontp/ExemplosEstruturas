*** Settings ***

Resource    ../resource/objects/PO_Interagindo_Com_Planilha.resource
Resource    ../resource/objects/PO_Tela_Login.resource



*** Test Cases ***

SCR0001_REALIZAR_LOGIN_MEUS_DIVIDENDOS

    Carregar Variaveis da Planilha
    Abrir Browser    ${AMBIENTE}
    Realizar Login    ${USUARIO}    ${SENHA}
    Acessar Smartifolio Antigo
    
    
    




*** Keywords ***

Carregar Variaveis da Planilha
    
    Ler Dados Da Planilha

    ${AMBIENTE}  Set Variable  ${VALOR_COLUNA_1}
    ${USUARIO}  Set Variable  ${VALOR_COLUNA_2}
    ${SENHA}   Set Variable     ${VALOR_COLUNA_3}


    Set Global Variable    ${AMBIENTE}
    Set Global Variable    ${USUARIO}
    Set Global Variable    ${SENHA}

    Fechar Planilha


