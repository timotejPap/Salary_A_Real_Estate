*** Settings ***
Library     Browser
Resource    keywords-selected_property.robot

*** Test Cases ***
Web
    Web

EN to SK
    Web
    EN to SK

EN to FR
    Web
    EN to FR

Checkbox Original state
    Web
    Checkbox Original state

Checkbox partial reconstruction
    Web
    Checkbox Partial reconstruction

Checkbox two choices
    Web
    Checkbox two choices  # wrong output