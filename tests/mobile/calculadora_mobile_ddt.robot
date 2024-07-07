*** Settings ***
Library           AppiumLibrary

Suite Setup    Open Application    ${REMOTE_URL}  
    ...    platformName=Android    
    ...    appium:platformVersion=9.0    
    ...    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    
    ...    appium:deviceOrientation=portrait    
    ...    appium:appPackage=com.google.android.calculator    
    ...    appium:appActivity=com.android.calculator2.Calculator    
    ...    appium:automationName=uiautomator2   
    ...    appium:app=storage:filename=Calculator_8.4 (503542421)_APKPure.apk
    ...    browserName=    
    ...    appium:ensureWebviewsHavePages=${True}    
    ...    appium:nativeWebScreenshot=${True}    
    #...    sauce:options=[object Object]    
    ...    appium:newCommandTimeout=${3600}    
    ...    appium:connectHardwareKeyboard=${True}

Suite Teardown    Close Application  

Test Template    Calcular

*** Variables ***
${SAUCE_USERNAME}    wagner_nobres
${REMOTE_URL}    https://${SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.eu-central-1.saucelabs.com:443/wd/hub
#2d42da9c-9935-4f37-8320-84c461588b59 

*** Test Cases ***
TC001    9    1    

TC002    6    2

TC003    1    7


***Keywords***
Calcular
    [Arguments]    ${num_1}    ${num_2}
    #Somar
    ${btn_1_soma} =    Set Variable     accessibility_id=${num_1}
    Click Element    ${btn_1_soma}
    ${btn_somar} =    Set Variable     accessibility_id=plus
    Click Element    ${btn_somar}
    ${btn_2_soma} =    Set Variable     accessibility_id=${num_2}
    Click Element    ${btn_2_soma}
    ${btn_igual} =    Set Variable     accessibility_id=equals
    Click Element    ${btn_igual}
    ${res_soma} =    Set Variable     id=com.google.android.calculator:id/result_final
    Click Element     ${res_soma}    

    #Subtrair
    ${btn_1_sub} =    Set Variable     accessibility_id=${num_1}
    Click Element    ${btn_1_sub}
    ${btn_sub} =    Set Variable     accessibility_id=minus
    Click Element    ${btn_sub}
    ${btn_2_sub} =    Set Variable     accessibility_id=${num_2}
    Click Element    ${btn_2_sub}
    ${btn_igual} =    Set Variable     accessibility_id=equals
    Click Element    ${btn_igual}
    ${res_sub} =    Set Variable     id=com.google.android.calculator:id/result_final
    Click Element     ${res_sub}    

    #Multiplicar
    ${btn_1_mult} =    Set Variable     accessibility_id=${num_1}
    Click Element    ${btn_1_mult}
    ${btn_mult} =    Set Variable     accessibility_id=multiply
    Click Element    ${btn_mult}
    ${btn_2_mult} =    Set Variable     accessibility_id=${num_2}
    Click Element    ${btn_2_mult}
    ${btn_igual} =    Set Variable     accessibility_id=equals
    Click Element    ${btn_igual}
    ${res_mult} =    Set Variable     id=com.google.android.calculator:id/result_final
    Click Element    ${res_mult}    

    #Dividir
    ${btn_1_div} =    Set Variable     accessibility_id=${num_1}
    Click Element    ${btn_1_div}
    ${btn_div} =    Set Variable     accessibility_id=divide
    Click Element    ${btn_div}
    ${btn_2_div} =    Set Variable     accessibility_id=${num_2}
    Click Element    ${btn_2_div}
    ${btn_igual} =    Set Variable     accessibility_id=equals
    Click Element    ${btn_igual}
    ${res_div} =    Set Variable     id=com.google.android.calculator:id/result_final
    Click Element     ${res_div}    