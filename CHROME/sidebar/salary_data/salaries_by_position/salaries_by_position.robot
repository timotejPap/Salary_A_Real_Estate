*** Settings ***
Library     Browser
Resource    keywords-salaries_by_position.robot


*** Test Cases ***
EN to SK
    Web
    Sidebar open
    EN to SK

EN to FR
    Web
    Sidebar open
    EN to FR

Average to median
    Web
    Sidebar open
    Average to median

City Banska Bystrica
    Web
    Sidebar open
    City Banská Bystrica

Remove outliers
    Web
    Sidebar open
    Remove outliers