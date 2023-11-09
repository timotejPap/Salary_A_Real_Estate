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

Box select
    Click                //a[@class='modebar-btn active']//*[name()='svg']
    Drag And Drop        //*[name()='rect' and contains(@class,'nsewdrag d')]    //*[name()='rect' and contains(@class,'nsewdrag d')]

Lasso select
    Click                //*[name()='path' and contains(@d,'m1018 538c')]
    # Drag And Drop        cannot be automated

Zoom in
    Click                //a[@data-title='Zoom in']//*[name()='svg']
    Take Screenshot

Zoom out
    Click                //a[@data-title='Zoom out']//*[name()='svg']
    Take Screenshot

Autoscale
    Click                //*[name()='path' and contains(@d,'m250 850l-')]
    Take Screenshot

Reset axes
    Click                //*[name()='path' and contains(@d,'m786 296v-')]
    Take Screenshot

Plotly logo
    Click                //*[name()='rect' and contains(@class,'cls-0')]