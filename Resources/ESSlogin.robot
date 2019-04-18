*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Log In
    wait until element is visible  css=input[id="username"]
    Input Text  css=input[id="username"]  5003
    #id=username
    Input Text  id=password  sa
    #Click Button  id=login-button
    #Click Button  class=btn btn-primary btn-block mt-1
    click element  css=button[type="submit"]

Redirect to Feeds
    wait until element is enabled  xpath=//a/span[text()='Feeds']
    click element   xpath=//a/span[text()='Feeds']

Redirect to People Page
    Wait Until Page Contains  Home
    Click Button  xpath=//button[@class='btn btn-lg btn-default']
    #xpath formula //tagname[@element type='copied element name']

Redirect to Attendance
    #Wait Until Page Contains  Home
    wait until element is visible  xpath=//a[@class="text-5 text-secondary ng-star-inserted"]/span[text()='Attendance']     30s
    click element  xpath=//a[@class="text-5 text-secondary ng-star-inserted"]/span[text()='Attendance']
    click element  xpath=//a[@class="text-5 text-secondary text-regular"]/span[text()='Attendance Info']