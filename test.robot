*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${nev}          Robika
${faj}          Papagáj
${gondozo}      Minta Péter


*** Test Cases ***
Open Site
    Open Browser    http://localhost:4200    Chrome    options=add_experimental_option("detach", True)
    Page Should Contain    home works!
    Maximize Browser Window
    Capture Page Screenshot    home.png

Click Animals
    Click Element    xpath://*[@id="navbarSupportedContent"]/ul/li[2]/a
    Sleep    1s
    Input Text    id:createnev    ${nev}
    Input Text    id:createfaj    ${faj}
    Input Text    id:creategondozo    ${gondozo}
    Click Element    id:createbutton

Animal Exist
    Wait Until Element Is Visible    id:${nev}nev    2s
    # Click Element    id:${nev}delete
    Input Text    id:${nev}nev    Zsoltika
