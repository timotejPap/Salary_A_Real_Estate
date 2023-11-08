*** Settings ***
Library     Browser

*** Variables ***
${URL}        http://194.163.140.160/

*** Test Cases ***
Sidebar open
    Web
    Sidebar open

Download graph
    Web
    Sidebar open
    Download graph

Zoom graph
    Web
    Sidebar open
    Zoom graph

Pan
    Web
    Sidebar open
    Pan

*** Keywords ***
Web
    New Browser         headless=False
    New Page            ${URL}
    Click               id=btn_sidebar
    Sleep               2

Sidebar open
    Click               //div[@class='flex-column nav nav-pills']//div[1]//a[2] 
    Sleep               2
    
Download graph
    Click                //*[name()='path' and contains(@d,'m500 450c-')]
    Sleep                2
    Take Screenshot

Zoom graph
    Click               //*[name()='path' and contains(@d,'m1000-25l-')]
    Drag And Drop       //*[name()='rect' and contains(@class,'nsewdrag d')]    //*[name()='rect' and contains(@class,'nsewdrag d')]
    Take Screenshot

Pan
    Click                //*[name()='path' and contains(@d,'m1000 350l')]
    Drag And Drop        //*[name()='rect' and contains(@class,'nsewdrag d')]    //*[name()='rect' and contains(@class,'nsewdrag d')]
    Take Screenshot

