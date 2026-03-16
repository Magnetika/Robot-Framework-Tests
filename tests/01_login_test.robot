*** Settings ***
Documentation     SauceDemo bejelentkezés moduláris felépítéssel.
Resource          ../resources/keywords.resource
Test Teardown     Close Browser

*** Test Cases ***
Felhasznalo sikeresen be tud jelentkezni
    [Tags]    Smoke    Login
    Bejelentkezes Az Oldalra    standard_user    secret_sauce
    Sikeres Bejelentkezes Ellenorzese