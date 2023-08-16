*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    variable.py

*** Keywords ***
User open Demo QA Text Box
    Open Browser    ${urlDemoQATextBox}    ${browser}
    Maximize Browser Window

User open Demo QA Checkbox
    Open Browser    ${urlDemoQACheckBox}    ${browser}
    Maximize Browser Window

User input data to Form
    Input Text    ${fullNameField}    ${fullName}
    Input Text    ${emailField}    ${emailUser}
    Input Text    ${addressField}    ${addressUser}
    Input Text    ${permanentAddressField}    ${permanentAddressUser}

User click Submit Button
    Execute JavaScript    window.scrollTo(0, document.querySelector("${submitText}").getBoundingClientRect().top - window.innerHeight/2)
    Click Element    ${submitButton}

User click Home checkbox
    Click Element    ${homeButton}

User validate Output Text
    Element Should Be Visible    ${outputText}

User close browser
    Close Browser

User validate Home checkbox checked
    Element Should Be Visible    ${resultText}
