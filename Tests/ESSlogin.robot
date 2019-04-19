*** Settings ***
Documentation  Demo info about the cases
Resource  Resources/Common.robot
Resource  Resources/ESSlogin.robot

*** Variables ***


*** Test Cases ***
NewESS login and navigate
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Common.Begin Web Test

    ESSlogin.Log In

    ESSlogin.Redirect to Feeds

    #ESSlogin.Redirect to Attendance

    ESSlogin.Redirect to People Page

    #Common.End Web Test