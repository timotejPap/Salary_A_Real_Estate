*** Settings ***
Library    Browser

*** Variables ***
${URL}        http://salary-realestate-dashboard.suflik.eu/page-5

*** Keywords ***
Web
    New Browser    headless=False
    New Page       ${URL}
    Sleep          2

EN to SK
    Click        //span[@id='react-select-2--value-item']
    Sleep        4
    Click        "SK"
    Get Text    "Density HeatMap podľa typu nehnutelnosti a okresu."
    Sleep        3
    Take Screenshot

EN to FR
    Click        //span[@id='react-select-2--value-item']
    Sleep        4
    Click        "FR"
    Get Text    "Carte thermique de la densité par type de propriété et par district."
    Sleep        3
    Take Screenshot

Okres Brezno + 3 izb byt
    Set Strict Mode    Off
    Click        //div[@id='react-select-3--value']//div[@class='Select-value']
    Click        "okres Brezno"
    Click        //div[@id='react-select-4--value']//div[@class='Select-value']
    Click        "3 izbový byt"
    Sleep        3