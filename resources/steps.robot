*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    variable.py

# *** Variables ***
# ${url_google}    https://www.google.com/
# ${url_demoqa}    https://demoqa.com/text-box
# ${text}    id=userName

*** Keywords ***
User can Submit form in Demo QA Text Box
    Open Browser    ${url_demoqa}    ${browser}
    Maximize Browser Window
    Input Text    ${fullNameField}    ${fullName}
    Input Text    ${emailField}    ${emailUser}
    Input Text    ${addressField}    ${addressUser}
    Input Text    ${permanentAddressField}    ${permanentAddressUser}
    Scroll Element Into View    xpath: //*[contains(text(), "Submit")]
    Click Element    ${submitButton}
    Element Should Be Visible    ${outputText}
    Close Browser
