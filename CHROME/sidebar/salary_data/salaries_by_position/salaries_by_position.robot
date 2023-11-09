*** Settings ***
Library     Browser
Resource  keywords-salaries_by_position.robot


*** Test Cases ***
Salaries by position
    Web
    Sidebar open

Average to median
    Web
    Sidebar open
    Average to median