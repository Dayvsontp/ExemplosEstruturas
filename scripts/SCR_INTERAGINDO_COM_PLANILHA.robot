*** Settings ***

Resource    ../resource/objects/PO_Interagindo_Com_Planilha.resource


*** Test Cases ***

SCR_INTERAGINDO_COM_PLANILHA
    Abrir Planilha
    Escrever na Planilha    $NUM_LINHA    $NUM_COLUNA    $VALOR
    











