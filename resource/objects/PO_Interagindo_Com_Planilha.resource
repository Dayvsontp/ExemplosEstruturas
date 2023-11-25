*** Settings ***

Library    SeleniumLibrary
Library    ExcelLibrary
Library    OperatingSystem

*** Variables ***

${CAMINHO_PLANILHA}        C:/Users/User/Desktop/CursoRobot/RobotFramework/ExemplosEstruturas/resource/inputs/

*** Keywords ***

Abrir Planilha

    Open Excel Document    ${CAMINHO_PLANILHA}SCR_INTERAGINDO_COM_PLANILHA.xlsx    1


Escrever na Planilha
    [Arguments]     ${NUM_LINHA}  ${NUM_COLUNA}   ${VALOR}   

    Write Excel Cell    ${NUM_LINHA}  ${NUM_COLUNA}   ${VALOR}    Global
    
    Log info    Foi escrito na linha '${NUM_LINHA}' e na coluna '${NUM_COLUNA}' o valor '${VALOR}'

    Save Excel Document    SCR_INTERAGINDO_COM_PLANILHA.xlsx





Log info
    [Arguments]    ${texto}
    Log     ${texto}