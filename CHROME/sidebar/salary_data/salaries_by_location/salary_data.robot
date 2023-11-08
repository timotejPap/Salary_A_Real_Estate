*** Settings ***
Library     Browser

*** Variables ***
${URL}        http://194.163.140.160/

*** Test Cases ***
Salaries by location
    Web
    Salaries by location

Salaries by position
    Web
    Salaries by position

Salaries by industry
    Web
    Salaries by industry

*** Keywords ***
Web
    New Browser         headless=False
    New Page            ${URL}
    Click               id=btn_sidebar
    Sleep               4

Salaries by location
    Click               //div[@class='flex-column nav nav-pills']//div[1]//a[2] 
    Get Text            "Median salaries by city the Slovak Republic"
    Sleep                4
    Click                //*[name()='path' and contains(@d,'m500 450c-')]
    Sleep                2
    Take Screenshot

Salaries by position
    Click               //div[@class='flex-column nav nav-pills']//div[1]//a[3] 
    Get Text            "Salaries for positions in the Slovak Republic"
    Sleep                4

Salaries by industry
    Click               //div[@class='flex-column nav nav-pills']//div[1]//a[4] 
    Get Text            "Salaries by industry in the Slovak Republic"
    Sleep                4