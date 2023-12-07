*** Settings ***
Library    Browser

*** Variables ***
${URL}        http://salary-realestate-dashboard.suflik.eu/page-6

*** Keywords ***
Web
    New Browser    headless=False
    New Page       ${URL}
    Sleep          2
    Get Text        "Number of offers for sale by property type and county."
    Take Screenshot

EN to SK
    Click           //div[@id='set_language']//span[@class='Select-arrow-zone']
    Click           "SK"
    Get Text        "Počet ponúk na predaj podľa typu nehnutelnosti a okresu."
    Sleep            3
    Take Screenshot

EN to FR
    Click           //div[@id='set_language']//span[@class='Select-arrow-zone']
    Click           "FR"
    Get Text        "Nombre d'offres de vente par type de bien et par département."
    Sleep            3
    Take Screenshot

Okres Bardejov
    Click            //div[@id='react-select-3--value']//div[@class='Select-value']
    Click            "okres Bardejov"
    Sleep            6
    Take Screenshot

Garsónka
    Click            //div[@id='react-select-4--value']//div[@class='Select-value']
    Click            "Garsónka"
    Sleep            5
    Take Screenshot