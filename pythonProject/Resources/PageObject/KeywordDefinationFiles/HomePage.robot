*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Verify Welcome Text is Visible
    Element Should Be Visible  ${WelcomeText}  timeout=5

Verify SignIn Button is Visible
    Element Should Be Visible  ${SignInButton}  timeout=5
