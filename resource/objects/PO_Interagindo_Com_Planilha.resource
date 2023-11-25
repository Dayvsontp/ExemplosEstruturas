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

    Log info    Foi escrito na linha '${NUM_LINHA}' e na coluna '${NUM_COLUNA}' o valor '${VALOR}'

    Save Excel 
    
    Log info    Planilha salva com sucesso!

Fechar Planilha
    Close Document



Ler Dados Da Planilha
    
      Abrir Planilha

      ${VALOR_COLUNA_1}    Read From Cells    Global    2    1
      ${VALOR_COLUNA_2}    Read From Cells    Global    2    2
      ${VALOR_COLUNA_3}    Read From Cells    Global    2    3

  Set Global Variable    ${VALOR_COLUNA_1}
  Set Global Variable    ${VALOR_COLUNA_2}
  Set Global Variable    ${VALOR_COLUNA_3}


Log info
    [Arguments]    ${texto}
    Log     ${texto}