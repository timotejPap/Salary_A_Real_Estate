*** Settings ***
Library     Browser
Resource    keywords-salaries_by_industry.robot


*** Test Cases ***


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