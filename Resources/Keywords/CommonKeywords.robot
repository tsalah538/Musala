*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}
${Browser}
${Wait}     120
*** Keywords ***
Navigate to Musala portal
    open browser       browser=${Browser}
    maximize browser window
    go to   ${URL}
    wait until element is visible    //a[normalize-space()='ACCEPT']    ${Wait}
    click element    //a[normalize-space()='ACCEPT']

close the browser
    close all browsers