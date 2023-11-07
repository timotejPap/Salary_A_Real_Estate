*** Settings ***
Library     Browser

*** Test Cases ***
Language EN to SK
    Browser EN to SK

Language EN to FR
    Browser EN to FR

*** Keywords ***
Browser EN to SK
    New Browser         headless=False
    New Page            http://194.163.140.160/
    Get Text            "Welcome!"
    Click               css=.dash-dropdown
    Sleep               4
    Click               "SK"
    Get Text            "Vitaj!"

Browser EN to FR
    New Browser         headless=False
    New Page            http://194.163.140.160/
    Get Text            "Welcome!"
    Click               css=.dash-dropdown
    Sleep               4
    Click               "FR"
    Get Text            "Bienvenue!"
    