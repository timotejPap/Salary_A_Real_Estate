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
    Click               //div[@class='flex-column nav nav-pills']//div[1]//a[4] 
    Sleep               2

Average to median
    Click                //span[@id='react-select-3--value-item']
    Sleep                2
    Click                "Median"
    Take Screenshot

City Banská Bystrica
    Click                id=react-select-4--value
    Click                "Banská Bystrica"
    Sleep                3
    Take Screenshot

Remove outliers
    Sleep                4
    Take Screenshot
    Click                id=_dbcprivate_checklist_outliers_checkbox_2_input_0
    Sleep                3
    Take Screenshot