*** Settings ***
Resource    ../../../pages/base_page.robot
Test Template    Fluxo de Compras Voo Ida e Volta

                                          
*** Test Cases ***
TC001    São Paolo    New York    

TC002    San Diego    Rome    

TC003    Mexico City    Dublin   

TC004    Philadelphia    London    

TC005    Portland    Cairo  


*** Keywords ***
Fluxo de Compras Voo Ida e Volta
    [Arguments]    ${city_departure}    ${city_destination}  

    Element Text Should Be    ${mensagem_primeira_pagina}    Welcome to the Simple Travel Agency!    
    Tirar Screenshot    1-Página inicial
    Selecionar Cidade de Origem    ${city_departure}     
    Selecionar Cidade de Destino    ${city_destination}   
    Tirar Screenshot    2-Origem e destino
    Clicar no botao "Find Flight"   

    Element Text Should Be    ${mensagem_segunda_pagina}    Flights from ${city_departure} to ${city_destination}:
    Tirar Screenshot    3-Página escolher voo
    Clicar no botao "Choose This Flight"   
    
    Element Text Should Be    ${mensagem_terceira_pagina}    Your flight from TLV to SFO has been reserved.
    Tirar Screenshot    4-Cadastro vazio
    Preencher campo Name    Lia Murakami
    Preencher campo Adress    Bergenstrasse, 763 
    Preencher campo City    Chiensee
    Preencher campo State    Bayern
    Preencher campo Zip Code    80964 
    Preencher Credit Card Number    9886543322222
    Preencher campo Month    05 
    Preencher campo Year    26
    Preencher campo Name on Card    Lia M. 
    Clicar em Remember me    
    Tirar Screenshot    5-Cadastro preenchido
    Clicar no botao "Purchase Flight"    
    
    Element Text Should Be    ${mensagem_quarta_pagina}    Thank you for your purchase today!
    Tirar Screenshot    6-Página final                       