*** Settings ***
Library        Browser

*** Variables ***
${URL}        http://194.163.140.160/

*** Keywords ***
Web
    New Browser         headless=False
    New Page            ${URL}
    Click               id=btn_sidebar
    Sleep               2

Sidebar open
    Click               //div[@class='flex-column nav nav-pills']//div[1]//a[3] 
    Sleep               2

Average to median
    Click                //span[@id='react-select-3--value-item']
    Sleep                2
    Click                "Median"
    Take Screenshot