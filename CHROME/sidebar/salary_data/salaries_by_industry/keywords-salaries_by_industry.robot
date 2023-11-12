*** Settings ***
Library        Browser

*** Variables ***
${URL}                    http://194.163.140.160/

*** Keywords ***
Web
    New Browser         headless=False
    New Page            ${URL}
    Sleep               2

Sidebar open
    Click               id=btn_sidebar
    Click               //div[@class='flex-column nav nav-pills']//div[1]//a[4] 
    Sleep               2

EN to SK
    Click               //div[@id='set_language']//span[@class='Select-arrow-zone']
    Sleep               4
    Click               "SK"
    Get Text            "Platy podla odvetvia v SR"
    Sleep               4    
    Take Screenshot

EN to FR
    Click               //div[@id='set_language']//span[@class='Select-arrow-zone']
    Sleep               4
    Click               "FR"
    Get Text            "Salaires par secteur d'activité en République slovaque"
    Sleep               4    
    Take Screenshot

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