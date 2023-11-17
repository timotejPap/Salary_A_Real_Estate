*** Settings ***
Library     Browser
Resource    keywords-salary_by_gender.robot

*** Test Cases ***
EN to SK
    Web
    Sidebar open
    EN to SK

EN to FR
    Web
    Sidebar open
    EN to FR

Profession by gender
    Web
    Sidebar open
    Profession by gender

Profession by age
    Web
    Sidebar open
    Profession by age 

City
    Web
    Sidebar open
    City

City + clear
    Web
    Sidebar open
    City + clear