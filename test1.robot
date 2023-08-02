*** Settings ***
Library    SeleniumLibrary
Resource    resources/steps.robot

*** Test Cases ***
DemoQA Input Text
    Input text in field userName
