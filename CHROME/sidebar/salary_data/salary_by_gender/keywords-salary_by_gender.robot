*** Settings ***
Library        Browser

*** Variables ***
${URL}                    http://salary-realestate-dashboard.suflik.eu/page-3

*** Keywords ***
Web
    New Browser         headless=False
    New Page            ${URL}
    Sleep               2

EN to SK
    Click               //div[@id='set_language']//span[@class='Select-arrow-zone']
    Sleep               4
    Click               "SK"
    Get Text            "Porovnanie celkových platov muži / ženy"
    Sleep               4
    Take Screenshot

EN to FR
    Click               //div[@id='set_language']//span[@class='Select-arrow-zone']
    Sleep               4
    Click               "FR"
    Get Text            "Comparaison des salaires totaux hommes / femmes"
    Sleep               4
    Take Screenshot

Profession by gender
    Click                //div[contains(text(),'Choose a profession...')]
    Click               "Account director"
    Sleep                5
    Take Screenshot

Profession by age
    Click                //div[contains(text(),'Choose a profession...')]
    Click               "Account director"
    Sleep                3
    Click                id=get_tab_title_also_age_range
    Sleep                7
    Take Screenshot

City
    Click                //div[contains(text(),'Choose a city...')]
    Click                "Bratislava"
    Sleep                5
    Take Screenshot

City + clear
    Click                //div[contains(text(),'Choose a city...')]
    Click                "Bratislava"
    Sleep                5
    Click                css=.Select-clear
    Sleep                5
    Take Screenshot