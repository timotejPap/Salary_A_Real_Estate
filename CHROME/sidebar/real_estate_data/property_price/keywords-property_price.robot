*** Settings ***
Library    Browser

*** Variables ***
${URL}        http://salary-realestate-dashboard.suflik.eu/page-9

*** Keywords ***
Web
    New Browser    headless=False
    New Page       ${URL}
    Sleep          2
    Get Text       "Property price development by type."
    Take Screenshot

EN to SK
    Click           //span[@id='react-select-2--value-item']
    Click           "SK"
    Get Text        "Vývoj ceny nehnuteľností podľa druhu."
    Sleep            3
    Take Screenshot

EN to FR
    Click           //span[@id='react-select-2--value-item']
    Click           "FR"
    Get Text        "Évolution des prix de l'immobilier par type."
    Sleep            3
    Take Screenshot

1 izb byt avg price
    Click            //span[@id='react-select-4--value-item']
    Click            "1 izbový byt"
    Sleep            6
    Click            //div[@class='user-select-none svg-container']//*[name()='svg']//*[name()='g' and contains(@class,'infolayer')]//*[name()='g' and contains(@class,'legend')]//*[name()='g' and contains(@class,'scrollbox')]//*[name()='g' and contains(@class,'groups')]//*[name()='g'][2]/*[name()='rect'][1]
    Sleep            5
    Take Screenshot