*** Settings ***
Library     Browser
Resource    keywords-salary_distribution.robot

*** Test Cases ***
EN to SK
    Web
    EN to SK

EN to FR
    Web
    EN to FR

City
    Web
    City

By position
    Web
    By position

City + by position
    Web
    City
    By position
    Clear