*** Variables ***
${LANDING_PAGE_TERM} =    Rentalo

*** Keywords ***
Load Homepage
    Go To  ${START_URL}

Homapage Loaded
    Wait Until Page Contains    ${LANDING_PAGE_TERM}


Ayuda Nav menu
    Click Element  xpath=/html/body/div/nav/div/div/a[1]

IniciarSesion Nav menu
    Click Element   xpath=/html/body/div/nav/div/div/a[2]

Crear Cuenta
    Click Element   xpath=/html/body/div/nav/div/div/a[3]

Carrito de Compras
    Click Element   xpath=/html/body/div/nav/div/div/a[4]/svg/path