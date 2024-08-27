*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Verify SignIn Button is Visible
    Element Should Be Visible  ${SignInButton}  timeout=5

Click SignIn
    Click Element    ${SignInButton}
