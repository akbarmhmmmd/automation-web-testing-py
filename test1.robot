*** Settings ***
Library    SeleniumLibrary
Resource    resources/steps.robot

*** Test Cases ***
DemoQA Submit Form
    User open Browser
    User input data to Form
    User click Submit Button
    User validate Output Text
    User close browser
