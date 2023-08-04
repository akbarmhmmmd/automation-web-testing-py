*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    variable.py

*** Keywords ***
User can Submit form in Demo QA Text Box
    Open Browser    ${url_demoqa}    ${browser}
    Maximize Browser Window
    Input Text    ${fullNameField}    ${fullName}
    Input Text    ${emailField}    ${emailUser}
    Input Text    ${addressField}    ${addressUser}
    Input Text    ${permanentAddressField}    ${permanentAddressUser}
    Execute JavaScript    window.scrollTo(0, document.querySelector("${submitText}").getBoundingClientRect().top - window.innerHeight/2)
    Click Element    ${submitButton}
    Element Should Be Visible    ${outputText}
    Close Browser
