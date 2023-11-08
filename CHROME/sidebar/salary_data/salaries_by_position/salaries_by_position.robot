*** Settings ***
Library     Browser

*** Variables ***
${URL}        http://194.163.140.160/

*** Test Cases ***
Salaries by position
    Web
    Salaries by position

*** Keywords ***
Web
    New Browser         headless=False
    New Page            ${URL}
    Click               id=btn_sidebar
    Sleep               4

Salaries by position
    Click               //div[@class='flex-column nav nav-pills']//div[1]//a[3] 
    Get Text            "Salaries for positions in the Slovak Republic"
    Sleep                4