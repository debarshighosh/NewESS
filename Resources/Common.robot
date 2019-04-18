*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${BROWSER}  chrome
${URL}      http://attendance1.esstest.gr8hr.biz/uas/portal/auth/login
*** Keywords ***
Begin Web Test
    OPEN BROWSER  ${URL}  ${BROWSER}
    MAXIMIZE BROWSER WINDOW
    #go to  http://masterdemodebarshi.gtin.gr8hr.biz/home.do


End Web Test
    Close Browser