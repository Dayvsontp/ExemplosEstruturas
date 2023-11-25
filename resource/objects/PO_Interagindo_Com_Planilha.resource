*** Settings ***

Library    SeleniumLibrary
Library    ExcelLibrary
Library    OperatingSystem
Library    RPA.Excel.Application
Library    RPA.Excel
#


*** Variables ***

${CAMINHO_PLANILHA}        C:/Users/User/Desktop/CursoRobot/RobotFramework/ExemplosEstruturas/resource/inputs/








*** Keywords ***

Abrir Planilha

    Open Workbook    ${CAMINHO_PLANILHA}SCR_INTERAGINDO_COM_PLANILHA.xlsx


Escrever na Planilha
   [Arguments]     ${NUM_LINHA}  ${NUM_COLUNA}   ${VALOR}   

    Set Active Worksheet    Global  
    Write To Cells  Global   ${NUM_LINHA}  ${NUM_COLUNA}  ${VALOR}
    Save Excel 
    
    Log info    Foi escrito na linha '${NUM_LINHA}' e na coluna '${NUM_COLUNA}' o valor '${VALOR}'

Fechar Planilha
    Close Document



#Pegar Nome das colunas
 #   ${VALOR_COLUNA_1}    Read From Cells    Global    1    1
 #   ${VALOR_COLUNA_2}    Read From Cells    Global    1    2
 #   ${VALOR_COLUNA_3}    Read From Cells    Global    1    3
 #   ${NOME_COLUNA}       Set Global Variable    ${VALOR_COLUNA_1}
 #   ${NOME_COLUNA}       Set Global Variable    ${VALOR_COLUNA_2}
 #   ${NOME_COLUNA}       Set Global Variable    ${VALOR_COLUNA_3}
#
Log info
    [Arguments]    ${texto}
    Log     ${texto}