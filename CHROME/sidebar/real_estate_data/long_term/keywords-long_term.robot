*** Settings ***
Library    Browser

*** Variables ***
${URL}        http://salary-realestate-dashboard.suflik.eu/page-10

*** Keywords ***
Web
    New Browser    headless=False
    New Page       ${URL}
    Sleep          2
    Get Text       "Long-term interest rates on 3-year fixed mortages"
    Take Screenshot

EN to SK
    Click           //span[@id='react-select-2--value-item']
    Click           "SK"
    Get Text        "Vývoj úrokových sadzieb na hypotéky 3r fix."
    Sleep            3
    Take Screenshot

EN to FR
    Click           //span[@id='react-select-2--value-item']
    Click           "FR"
    Get Text        "Taux d'intérêt à long terme sur les prêts hypothécaires fixes à 3 ans."
    Sleep            3
    Take Screenshot

VUB
    Click            //div[@class='user-select-none svg-container']//*[name()='svg']//*[name()='g' and contains(@class,'infolayer')]//*[name()='g' and contains(@class,'legend')]//*[name()='g' and contains(@class,'scrollbox')]//*[name()='g'][9]/*[name()='g'][1]/*[name()='rect'][1]
    Sleep            5
    Take Screenshot

mBank
    Click            //div[@class='user-select-none svg-container']//*[name()='svg']//*[name()='g' and contains(@class,'infolayer')]//*[name()='g' and contains(@class,'legend')]//*[name()='g' and contains(@class,'scrollbox')]//*[name()='g'][10]/*[name()='g'][1]/*[name()='rect'][1]
    Sleep            5
    Take Screenshot