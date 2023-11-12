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
    Click               //div[@class='flex-column nav nav-pills']//div[1]//a[5] 
    Sleep               2

EN to SK
    Click               //div[@id='set_language']//span[@class='Select-arrow-zone']
    Sleep               4
    Click               "SK"
    Get Text            "Porovnanie celkových platov muži / ženy"
    Sleep               4
    Take Screenshot

EN to FR
    Click               //div[@id='set_language']//span[@class='Select-arrow-zone']
    Sleep               4
    Click               "FR"
    Get Text            "Comparaison des salaires totaux hommes / femmes"
    Sleep               4
    Take Screenshot

