# This sample code supports Appium Robot client >=2
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with Robot
#
# Find keywords at: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# If your tests fails saying 'did not match any elements' consider using 'wait activity' or
# 'wait until page contains element' before a click command

*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Variables ***
${SAUCE_USERNAME}    wagner_nobres
${REMOTE_URL}    https://${SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.eu-central-1.saucelabs.com:443/wd/hub
#2d42da9c-9935-4f37-8320-84c461588b59 

*** Test Cases ***
Calculadora
    Open Application    ${REMOTE_URL}   
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
    
    #Somar
    ${btn_9} =    Set Variable     accessibility_id=9
    Click Element    ${btn_9}
    ${btn_somar} =    Set Variable     accessibility_id=plus
    Click Element    ${btn_somar}
    ${btn_1} =    Set Variable     accessibility_id=1
    Click Element    ${btn_1}
    ${btn_igual} =    Set Variable     accessibility_id=equals
    Click Element    ${btn_igual}
    ${res_soma} =    Set Variable     id=com.google.android.calculator:id/result_final
    Element Text Should Be     ${res_soma}    10

    #Subtrair
    ${btn_9} =    Set Variable     accessibility_id=9
    Click Element    ${btn_9}
    ${btn_sub} =    Set Variable     accessibility_id=minus
    Click Element    ${btn_sub}
    ${btn_1} =    Set Variable     accessibility_id=1
    Click Element    ${btn_1}
    ${btn_igual} =    Set Variable     accessibility_id=equals
    Click Element    ${btn_igual}
    ${res_sub} =    Set Variable     id=com.google.android.calculator:id/result_final
    Element Text Should Be     ${res_sub}    8

    #Multiplicar
    ${btn_9} =    Set Variable     accessibility_id=9
    Click Element    ${btn_9}
    ${btn_mult} =    Set Variable     accessibility_id=multiply
    Click Element    ${btn_mult}
    ${btn_9} =    Set Variable     accessibility_id=9
    Click Element    ${btn_9}
    ${btn_igual} =    Set Variable     accessibility_id=equals
    Click Element    ${btn_igual}
    ${res_mult} =    Set Variable     id=com.google.android.calculator:id/result_final
    Element Text Should Be    ${res_mult}    81

    #Dividir
    ${btn_9} =    Set Variable     accessibility_id=9
    Click Element    ${btn_9}
    ${btn_div} =    Set Variable     accessibility_id=divide
    Click Element    ${btn_div}
    ${btn_2} =    Set Variable     accessibility_id=2
    Click Element    ${btn_2}
    ${btn_igual} =    Set Variable     accessibility_id=equals
    Click Element    ${btn_igual}
    ${res_div} =    Set Variable     id=com.google.android.calculator:id/result_final
    Element Text Should Be     ${res_div}    4.5