*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***

Verify Create Account is Visible
    Element Should Be Visible    ${FullName}    timeout=10

Input FirstName
    Input Text  ${LoginUsernameInputBox}    ${Username}

Input EmailAddress
    Input Text  ${LoginEmailInputBox}   ${Email}

Input Password
    Input Text  ${LoginPasswordInputBox}    ${Password}

Input Day
    Input Text  ${Date}    ${InputDate}

Input Year
    Input Text  ${Year}    ${InputYear}

Click Next
    Click Element    ${CreateAccountNext}
