*** Settings ***
Documentation    Este desafio, relata meu aprendizado no curso ate o momento

Library    SeleniumLibrary


*** Variables ***
@{LISTA}    1    2    5    4    3    9    7    8    13    15    6    10



*** Test Cases ***
Teste case 01
    Keyword usando FOR





*** Keywords ***

Keyword usando FOR
    Log To Console    ${\n}
    FOR    ${PERCORRE}    IN    @{LISTA}
        Log To Console    ${PERCORRE}
        IF    ${PERCORRE} == 5  

            Logar informacao quando for igual a 5    '${PERCORRE}'
                
        ELSE IF    ${PERCORRE} == 10
                Logar informacao quando for igual a 10    '${PERCORRE}'
            
        ELSE

            Log    Eu NAO sou o numero 5 nem o 10! Sou '${PERCORRE}'
            
        END
        
    END


Logar informacao quando for igual a 5
    [Arguments]    ${numero}
    Log   Eu sou o numero ${numero}

Logar informacao quando for igual a 10
    [Arguments]    ${numero}
    Log   Eu sou o numero ${numero}