*** Settings ***
Library     Browser

*** Variables ***
${URL}        http://194.163.140.160/

*** Test Cases ***
Sidebar open
    Web
    Sidebar open

Download plot
    Web
    Sidebar open
    Download plot

*** Keywords ***
Web
    New Browser         headless=False
    New Page            ${URL}
    Click               id=btn_sidebar
    Sleep               4

Sidebar open
    Click               //div[@class='flex-column nav nav-pills']//div[1]//a[2] 
    Get Text            "Median salaries by city the Slovak Republic"
    Sleep                4
    
Download plot
    Click                //*[name()='path' and contains(@d,'m500 450c-')]
    Sleep                2
    Take Screenshot