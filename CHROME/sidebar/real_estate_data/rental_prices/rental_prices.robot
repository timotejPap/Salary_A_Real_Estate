*** Settings ***
Library     Browser
Resource    keywords-rental_prices.robot

*** Test Cases ***
Web
    Web

EN to SK
    Web
    EN to SK

EN to FR
    Web
    EN to FR

Dvojgarsónka
    Set Strict Mode     False    Test
    Web
    Dvojgarsónka

Partial reconstruction
    Web
    Dvojgarsónka
    Partial reconstruction