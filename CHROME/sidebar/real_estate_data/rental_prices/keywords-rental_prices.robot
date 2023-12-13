*** Settings ***
Library    Browser

*** Variables ***
${URL}        http://salary-realestate-dashboard.suflik.eu/page-8

*** Keywords ***
Web
    New Browser    headless=False
    New Page       ${URL}
    Sleep          2
    Get Text       "Rental prices of selected properties by state."
    Take Screenshot

EN to SK
    Click           //span[@id='react-select-2--value-item']
    Click           "SK"
    Get Text        "Ceny nájmov vybraných nehnuteľností podľa stavu."
    Sleep            3
    Take Screenshot

EN to FR
    Click           //span[@id='react-select-2--value-item']
    Click           "FR"
    Get Text        "Prix de location d'une sélection de biens immobiliers par État."
    Sleep            3
    Take Screenshot

Dvojgarsónka
    Click           //div[@id='react-select-4--value']//div[@class='Select-value']
    Click           "Dvojgarsónka"
    Sleep            6
    Scroll By        ${None}    200    0    smooth
    Sleep            5
    Take Screenshot

Partial reconstruction
    Click            //div[@class='user-select-none svg-container']//*[name()='svg']//*[name()='g' and contains(@class,'infolayer')]//*[name()='g' and contains(@class,'legend')]//*[name()='g' and contains(@class,'scrollbox')]//*[name()='g'][1]/*[name()='g'][1]/*[name()='rect'][1]
    Sleep            4
    Take Screenshot