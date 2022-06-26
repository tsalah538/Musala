*** Settings ***
Resource    ../Resources/Keywords/ContuctUsKeywords.robot
Resource    ../Resources/Keywords/CommonKeywords.robot
Resource    ../Resources/Keywords/MainPageKeywords.robot
Resource    ../Resources/Keywords/CompanyKeywords.robot
Resource    ../Resources/Keywords/CareersKeywords.robot
Test Setup    Navigate to Musala portal
Test Teardown    close the browser
*** Test Cases ***
Test Case 1
    [Documentation]    Verify that error message ‘The e-mail address entered is invalid
    Press on Contuct us button
    Insert Name value    Tamer
    Insert email value    test@test
    Insert mobile number value    0123456789
    Insert subject value    New subject
    Insert message value     hello
    Click on send button
    Validae wrong email message


Test Case 2
    [Documentation]
    Click on company link
    Verify that correct URL loads
    Verify that leadership section is exist
    Click on facebook link
    Verify correct company facebook page URL
    Verify company profile picture appears on the page


Test Case 3
    Click on Careers link
    Click on Check our open position button
    Check Join Us URl
    Select item from location DDL    2
    Click on Automation Engineer link
    Verify that 4 main sections are shown on page
    Verify page contains apply btton
    Click on Apply button
    insert my name value     Tamer
    insert my email value      test@test
    Upload my CV
    Click on agreement button
    Click send button
    Click on close button
    wrongEmail_validation_message
    validate missing mandatroy field message

Test Case 4
    Click on Careers link
    Click on Check our open position button
    Check Join Us URl
    Select item from location DDL     2
    logging to console

Test3
    open browser  https://www.musala.com/careers/join-us/    Chrome
    ${x}    get title
    log     ${x}
