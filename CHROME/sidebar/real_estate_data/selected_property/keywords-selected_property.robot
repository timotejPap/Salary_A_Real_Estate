*** Settings ***
Library    Browser

*** Variables ***
${URL}        http://salary-realestate-dashboard.suflik.eu/page-7

*** Keywords ***
Web
    New Browser    headless=False
    New Page       ${URL}
    Sleep          2
    Get Text       "Selected property prices by condition."
    Take Screenshot

EN to SK
    Click           //span[@id='react-select-2--value-item']
    Click           "SK"
    Get Text        "Ceny vybraných nehnuteľností podľa stavu."
    Sleep            3
    Take Screenshot

EN to FR
    Click           //span[@id='react-select-2--value-item']
    Click           "FR"
    Get Text        "Prix de l'immobilier sélectionnés par conditions."
    Sleep            3
    Take Screenshot

Checkbox Original state
    Click                    //div[@class='user-select-none svg-container']//*[name()='svg']//*[name()='g' and contains(@class,'infolayer')]//*[name()='g' and contains(@class,'legend')]//*[name()='g' and contains(@class,'scrollbox')]//*[name()='g'][1]/*[name()='g'][1]/*[name()='rect'][1]
    Sleep                    4
    Take Screenshot          
    Reload
    Sleep                    6
    Take Screenshot

Checkbox Partial reconstruction
    Click                    //div[@class='user-select-none svg-container']//*[name()='svg']//*[name()='g' and contains(@class,'infolayer')]//*[name()='g' and contains(@class,'legend')]//*[name()='g' and contains(@class,'scrollbox')]//*[name()='g'][6]/*[name()='g'][1]/*[name()='rect'][1]
    Take Screenshot      
    Sleep                    3
    Reload
    Scroll To Element        //div[@class='user-select-none svg-container']
    Sleep                    6
    Take Screenshot

Checkbox two choices
    Click                    //div[@class='user-select-none svg-container']//*[name()='svg']//*[name()='g' and contains(@class,'infolayer')]//*[name()='g' and contains(@class,'legend')]//*[name()='g' and contains(@class,'scrollbox')]//*[name()='g'][2]/*[name()='g'][1]/*[name()='rect'][1]
    Click                    //div[@class='user-select-none svg-container']//*[name()='svg']//*[name()='g' and contains(@class,'infolayer')]//*[name()='g' and contains(@class,'legend')]//*[name()='g' and contains(@class,'scrollbox')]//*[name()='g'][5]/*[name()='g'][1]/*[name()='rect'][1]
    Take Screenshot      
    Sleep                    3
    Reload
    Scroll To Element        //div[@class='user-select-none svg-container']
    Sleep                    6
    Take Screenshot