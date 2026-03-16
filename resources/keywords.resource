*** Settings ***
Library    SeleniumLibrary
Resource   locators.resource

*** Keywords ***
Bejelentkezes Az Oldalra
    [Arguments]    ${user}    ${pass}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      ${USER_FIELD}    ${user}
    Input Password  ${PASS_FIELD}    ${pass}
    Click Button    ${LOGIN_BTN}

Sikeres Bejelentkezes Ellenorzese
    Element Should Be Visible    ${HEADER_LABEL}
    Element Text Should Be       ${HEADER_LABEL}    Products