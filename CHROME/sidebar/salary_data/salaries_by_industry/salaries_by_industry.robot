*** Settings ***
Library     Browser
Resource    keywords-salaries_by_industry.robot


*** Test Cases ***
EN to SK
    Web
    EN to SK

EN to FR
    Web
    EN to FR

Average to median
    Web
    Average to median

City Banska Bystrica
    Web
    City Banská Bystrica

Remove outliers
    Web
    Remove outliers