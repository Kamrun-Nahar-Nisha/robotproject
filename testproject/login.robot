*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://opensource-demo.orangehrmlive.com/
${Browser}  Chrome

*** Test Cases ***
MyFirsttest
    Log     Hello World...

FirstSeleniumTest
    Open Browser    https:google.com    chrome
    Set Browser Implicit Wait       10
    maximize browser window
    #Sleep 1
    Close Browser

SampleLoginTest
    [Documentation]        This is a sample login test
    Open Browser           ${URL}   ${Browser}
    maximize browser window
    Set Browser Implicit Wait    10
    Input Text          id=txtUsername      Admin
    Input Password      id=txtPassword      admin123
    Click Button      id=btnLogin
    Click Element     id=welcome
    Click Element     link=Logout
    Close Browser
    Log               Test completed