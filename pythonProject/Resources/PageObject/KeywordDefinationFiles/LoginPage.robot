*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***

Click CreateAccount
    Click Element    ${CreateAccountButton}

Verify Create an Account Button is Visible
    Element Should Be Visible  ${CreateAccountButton}  timeout=5
