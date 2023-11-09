*** Settings ***
Library     Browser
Resource    keywords-salaries_by_location.robot


*** Test Cases ***
Sidebar open
    Web
    Sidebar open

Download graph
    Web
    Sidebar open
    Download graph

Zoom graph
    Web
    Sidebar open
    Zoom graph

Pan
    Web
    Sidebar open
    Pan

Box select
    Web
    Sidebar open
    Box select

Lasso select
    Web
    Sidebar open
    Lasso select

Zoom in
    Web
    Sidebar open
    Zoom in

Zoom out
    Web
    Sidebar open
    Zoom in
    Zoom out