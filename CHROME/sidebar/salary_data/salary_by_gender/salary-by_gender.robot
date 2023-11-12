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