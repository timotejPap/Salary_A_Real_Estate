*** Settings ***
Library        Browser

*** Variables ***                
${URL}                http://194.163.140.160/


*** Keywords ***
Web
    New Browser         headless=False
    New Page            ${URL}
<<<<<<< HEAD
    Get Text            "Welcome!"
=======
    # Get Text            "Welcome!"
>>>>>>> b80dc01f9a4c283ec3a023b44a5dec04ad724fa9

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