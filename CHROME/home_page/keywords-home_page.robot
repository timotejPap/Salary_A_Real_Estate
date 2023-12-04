*** Settings ***
Library        Browser

*** Variables ***                
${URL}                http://salary-realestate-dashboard.suflik.eu/


*** Keywords ***
Web
    New Browser         headless=False
    New Page            ${URL}
    Get Text            "Welcome!"

Browser EN to SK
    Click               css=.dash-dropdown
    Sleep               4
    Click               "SK"
    Get Text            "Vitaj!"

Browser EN to FR
    Click               css=.dash-dropdown
    Sleep               4
    Click               "FR"
    Get Text            "Bienvenue!"