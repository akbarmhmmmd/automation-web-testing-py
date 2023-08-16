*** Settings ***
Library    SeleniumLibrary
Resource    resources/steps.robot

*** Test Cases ***
DemoQA Submit Form
    User open Demo QA Text Box
    User input data to Form
    User click Submit Button
    User validate Output Text
    User close browser

DemoQA click checkbox
    User open Demo QA Checkbox
    User click Home checkbox
    User validate Home checkbox checked
    User close browser
