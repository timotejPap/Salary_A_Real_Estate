*** Settings ***
Library     Browser
Resource    keywords-home_page.robot


*** Test Cases ***
Language EN to SK
    Web
    Browser EN to SK

Language EN to FR
    Web
    Browser EN to FR