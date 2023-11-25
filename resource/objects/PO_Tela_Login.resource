*** Settings ***

Library    SeleniumLibrary
Library    ExcelLibrary
Library    OperatingSystem
Library    RPA.Excel.Application
Library    RPA.Excel


*** Variables ***
${USER_ICON}                        //img[contains(@alt,'Ícone Usuário')]
${USUARIO_EMAIL}                    //input[@type='email'][contains(@id,'email')]
${SENHA_MEUS_DIVIDENDOS}            //input[@type='password'][contains(@id,'pass')]
${BUTTON_LOGIN_MEUS_DIVIDENDOS}     //button[@type='button'][contains(.,'Entrar')]
${SMARTIFOLIO_ANTIGO}               //img[contains(@class,'img-fluid mb-4 antigo  ')]


*** Keywords ***

Abrir Browser
    [Arguments]    ${AMBIENTE}

    Open Browser    ${AMBIENTE}    chrome
    Maximize Browser Window
    
    

Realizar Login
    [Arguments]    ${USUARIO}    ${SENHA}

    Wait Until Element Is Visible    ${USER_ICON}    10s
    Click Element    ${USER_ICON}
    Capture Page Screenshot

    Input Text    ${USUARIO_EMAIL}    ${USUARIO}
    Input Password    ${SENHA_MEUS_DIVIDENDOS}    ${SENHA}
    Sleep    3s

    Click Button    ${BUTTON_LOGIN_MEUS_DIVIDENDOS}
    Sleep    3s
    Capture Page Screenshot

Acessar Smartifolio Antigo

    Wait Until Element Is Visible    ${SMARTIFOLIO_ANTIGO}  10s
    Click Element    ${SMARTIFOLIO_ANTIGO}
    Sleep    5s