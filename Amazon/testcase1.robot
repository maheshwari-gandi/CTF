*** Settings ***
Documentation     Simple example of using Robot Framework with SeleniumLibrary
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://www.amazon.in/

*** Test Cases ***
TC001
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    sleep   5
    Login to account

TC002
    search for mobile


*** Keywords ***
Login to account
    Click Element    //span[normalize-space()='Account & Lists']
    sleep   5
    Input Text      //input[@id='ap_email']    7989693368
    sleep   5
    Click Element   //input[@id='continue']
    sleep  5
    Input Text      //input[@id='ap_password']  Mahi@3103
    sleep  3
    Click Element   //input[@id='signInSubmit']
    sleep   3

Search for mobile
    Click Element   //input[@id='twotabsearchtextbox']
    sleep   5
    Input Text      //input[@id='twotabsearchtextbox']   samsung s23
    sleep   5
    Click Element   //input[@id='nav-search-submit-button']
    sleep   5





