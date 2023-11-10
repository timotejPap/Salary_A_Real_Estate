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

City Banska Bystrica
    Web
    Sidebar open
    City Banská Bystrica

City London
    Web
    Sidebar open
    City London

Remove outliers
    Web
    Sidebar open
    Remove outliers