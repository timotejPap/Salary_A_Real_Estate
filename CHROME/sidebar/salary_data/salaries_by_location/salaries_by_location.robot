*** Settings ***
Library     Browser
Resource    keywords-salaries_by_location.robot


*** Test Cases ***
Home button
    Web
    Home butt

EN to Slovak
    Web
    EN to Slovak    

EN to French
    Web
    EN to French

Download graph
    Web
    Download graph

Zoom graph
    Web
    Zoom graph

Pan
    Web
    Pan

Box select
    Web
    Box select

Lasso select
    Web
    Lasso select

Zoom in
    Web
    Zoom in

Zoom out
    Web
    Zoom in
    Zoom out

Autoscale
    Web
    Zoom in
    Autoscale

Reset axes
    Web
    Zoom out
    Reset axes

Plotly logo
    Web
    Plotly logo