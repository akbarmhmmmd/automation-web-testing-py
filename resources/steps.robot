*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    variable.py

*** Keywords ***
User open Browser
    Open Browser    ${url_demoqa}    ${browser}
    Maximize Browser Window

User input data to Form
    Input Text    ${fullNameField}    ${fullName}
    Input Text    ${emailField}    ${emailUser}
    Input Text    ${addressField}    ${addressUser}
    Input Text    ${permanentAddressField}    ${permanentAddressUser}

User click Submit Button
    Execute JavaScript    window.scrollTo(0, document.querySelector("${submitText}").getBoundingClientRect().top - window.innerHeight/2)
    Click Element    ${submitButton}

User validate Output Text
    Element Should Be Visible    ${outputText}

User close browser
    Close Browser
