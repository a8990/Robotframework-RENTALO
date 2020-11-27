*** Settings ***
Library  Selenium2Library

*** Variables ***
${LANDING_PAGE_TERM} =    Rentalo
${LANDING_PAGE_MUEVE_TIERRA} =  Equipo Mueve Tierra
${LANDING_PAGE_FILTRAR} =  Filtrar por:

*** Keywords ***
Cargar Homepage
    Go To  ${START_URL}     
    Maximize Browser Window
     
Homepage cargada
    Wait Until Page Contains    ${LANDING_PAGE_TERM}
 
Ir a la Barra de Busqueda
    Click Element  xpath=/html/body/div/div/section[1]/div/div/div/div[1]/input

Ir a Seccion Categorias
    Element Should Be Visible   xpath=/html/body/div/div/section[2]/h2

Seleccionar Categoria Equipo Mueve Tierra
    Element Should Be Visible   xpath=/html/body/div/div/section[2]/div/a[1]/div[1]
    Click Element   xpath=/html/body/div/div/section[2]/div/a[1]/div[1]
    Wait Until Page Contains    ${LANDING_PAGE_MUEVE_TIERRA}
    Element Should Be Visible   xpath=//*[@id="app"]/section/div[2]/h1
    Wait Until Page Contains    ${LANDING_PAGE_FILTRAR}
    #Element Should Be Visible   xpath=//*[@id="app"]/section/div[2]/div[2]/div[1]/p
    Capture Page Screenshot

Select Custom Private Events
    Click Element   //*[@id="appRoot"]/div/div/div[2]/div[1]/header/div[2]/div/div/ul/li[2]/a

Close Chance to Win Modal
    #Page Should Contain Element    //*[@id="logo"]/img      
    Click Element   xpath=//*[@id="closeIconContainer"]