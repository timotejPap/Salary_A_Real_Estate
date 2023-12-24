*** Settings ***
Library    Browser

*** Variables ***
${URL}        http://salary-realestate-dashboard.suflik.eu/page-12

*** Keywords ***
Web
    New Browser    headless=False
    New Page       ${URL}
    Sleep          2
    Get Text       "Ratio of wages and housing prices by district."
    Take Screenshot

EN to SK
    Click           //span[@id='react-select-2--value-item']
    Click           "SK"
    Get Text        "Pomer mzdy a ceny bývania podľa okresu."
    Sleep            3
    Take Screenshot

EN to FR
    Click           //span[@id='react-select-2--value-item']
    Click           "FR"
    Get Text        "Ratio des salaires et des prix des logements par régions."
    Sleep            3
    Take Screenshot