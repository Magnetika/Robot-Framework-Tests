*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.saucedemo.com/
${BROWSER}     chrome

*** Test Cases ***
Sikeres Bejelentkezes
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id:user-name    standard_user
    Input Password  id:password     secret_sauce
    Click Button    id:login-button
    Element Should Be Visible    class:title
    [Teardown]    Close Browser