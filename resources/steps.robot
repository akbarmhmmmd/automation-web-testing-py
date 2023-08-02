*** Settings ***
Library    SeleniumLibrary
Variables    variable.py

# *** Variables ***
# ${url_google}    https://www.google.com/
# ${url_demoqa}    https://demoqa.com/text-box
# ${text}    id=userName

*** Keywords ***
Input text in field userName
    Open Browser    ${url_demoqa}    chrome
    Input Text    ${text}    uno
