*** Settings ***
Library     Browser

*** Test Cases ***
Language EN to SK
    Browser EN to SK
    Browser EN to FR

*** Keywords ***
Browser EN to SK
    New Browser         headless=False    channel=msedge
    New Page            http://194.163.140.160/
    Get Text            text="Welcome!"
    Click               css=.dash-dropdown
    Sleep               4
    Click               text="SK"
    Get Text            text="Vitaj!"

Browser EN to FR
    New Browser         headless=False    channel=msedge
    New Page            http://194.163.140.160/
    Get Text            text="Welcome!"
    Click               css=.dash-dropdown
    Sleep               4
    Click               text="FR"
    Get Text            text="Bienvenue!"
    