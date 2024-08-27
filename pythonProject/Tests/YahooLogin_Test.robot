*** Settings ***
Documentation  Page Object in Robot Framework
Library  SeleniumLibrary
Resource  ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../Resources/PageObject/KeywordDefinationFiles/HomePage.robot
Resource  ../Resources/PageObject/KeywordDefinationFiles/CreateAccountPage.robot
Resource  ../Resources/PageObject/KeywordDefinationFiles/Common.robot
*** Variables ***

*** Test Cases ***
Verify Yahoo Finance Account creation
    [documentation]  This test case verifies Yahoo Finance Account Creation
    [tags]  Smoke
    Open Browser  https://finance.yahoo.com/  Chrome
    Verify SignIn Button is Visible
    Click SignIn
    Verify Create an Account Button is Visible
    Click CreateAccount
    Verify Create Account is Visible
    Input FirstName
    Input EmailAddress
    Input Password
    Select From List By Index  id:usernamereg-month    1
    Input Day
    Input Year
    Click Next
    Close Browser

*** Keywords ***