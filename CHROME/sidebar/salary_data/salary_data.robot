*** Settings ***
Library     Browser

*** Test Cases ***
Salary
    Set Strict Mode     off
    Browser

*** Keywords ***
Browser
    New Browser         headless=False
    New Page            http://194.163.140.160/
    Click               id=btn_sidebar
    Sleep               4
    Click               "Salaries by location"
    Get Text            "Median salaries by city the Slovak Republic"