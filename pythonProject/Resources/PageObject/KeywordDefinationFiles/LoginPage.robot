*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Input Username
    Input Text  ${LoginUsernameInputBox}  ${Username}

Click Login
    Click Element  ${LoginButton}

Click SignIn
    Click Element    ${SignInButton}

Click CreateAccount
    Click Element    ${CreateAccountButton}

Verify Create an Account Button is Visible
    Element Should Be Visible  ${CreateAccountButton}  timeout=5
