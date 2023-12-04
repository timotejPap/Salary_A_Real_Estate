*** Settings ***
Library     Browser
Resource    keywords-salary_by_gender.robot

*** Test Cases ***
EN to SK
    Web
    EN to SK

EN to FR
    Web
    EN to FR

Profession by gender
    Web
    Profession by gender

Profession by age
    Web
    Profession by age 

City
    Web
    City

City + clear
    Web
    City + clear