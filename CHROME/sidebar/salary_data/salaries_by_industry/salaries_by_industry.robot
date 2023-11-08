*** Settings ***
Library     Browser

*** Variables ***
${URL}        http://194.163.140.160/

*** Test Cases ***
Salaries by industry
    Web
    Salaries by industry

*** Keywords ***
Web
    New Browser         headless=False
    New Page            ${URL}
    Click               id=btn_sidebar
    Sleep               4

Salaries by industry
    Click               //div[@class='flex-column nav nav-pills']//div[1]//a[4] 
    Get Text            "Salaries by industry in the Slovak Republic"
    Sleep                4