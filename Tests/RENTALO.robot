*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Resources/RENTALOApp.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://rentalo.com.mx/
${HOMEPAGE_TITLE} =  Secaucus, NJ
${SEARCH_TERM} =  events within
${EVENT_CALENDAR_PAGE} =    Yaymaker Events in your area
${BECOME_A_HOST_PAGE} =    Become a Certified Yaymaker Host


*** Test Cases ***
RENTALO WebSite carga de pagina principal

    [Tags]  Current
    #YaymakerApp.Search for Projects
    RENTALOApp.Busqueda de Maquinarias