*** Settings ***
Library     Browser
Resource    keywords-salaries_by_location.robot


*** Test Cases ***
Home button
    Web
    Sidebar open
    Home button

EN to SK
    Web
    Sidebar open
    EN to SK

EN to FR
    Web
    Sidebar open
    EN to FR

<<<<<<< HEAD
Home button    
=======
Home button    # robotcode: ignore
>>>>>>> a93e1a36a5ae27b0aa5872800cce0bcd666048fe
    Web
    Sidebar open
    Home button

EN to SK
    Web
    Sidebar open
    EN to SK

EN to FR
    Web
    Sidebar open
    EN to FR

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

Autoscale
    Web
    Sidebar open
    Zoom in
    Autoscale

Reset axes
    Web
    Sidebar open
    Zoom out
    Reset axes

Plotly logo
    Web
    Sidebar open
    Plotly logo