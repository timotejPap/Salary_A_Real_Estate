*** Settings ***
Library        Browser

*** Variables ***
${URL}                    http://salary-realestate-dashboard.suflik.eu/page-4

*** Keywords ***
Web
    New Browser         headless=False
    New Page            ${URL}
    Sleep               2

EN to SK
    Click               //div[@id='set_language']//span[@class='Select-arrow-zone']
    Sleep               4
    Click               "SK"
    Get Text            "Distribúcia mzdy podľa počtu obsadených miest / respondentov"
    Sleep               4
    Take Screenshot

EN to FR
    Click               //div[@id='set_language']//span[@class='Select-arrow-zone']
    Sleep               4
    Click               "FR"
    Get Text            "Répartition des salaires par nombre de postes occupés / répondants"
    Sleep               4
    Take Screenshot

City
    Click                //div[@class='Select-placeholder']
    Sleep                3
    Click                "Brezno"
    Sleep                5
    Take Screenshot

By position
    Click                //span[normalize-space()='By position']
    Sleep                7
    Take Screenshot

Clear
    Click               //span[@class='Select-clear']
