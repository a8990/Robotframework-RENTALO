*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/BecomeHost.robot
Resource  Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  Resources/PO/Product.robot
Resource  Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot
Resource  ../Resources/PO/EventCalendar.robot

*** Keywords ***
Busqueda de Maquinarias
    LandingPage.Cargar Homepage
    LandingPage.Homepage cargada
    LandingPage.Ir a la Barra de Busqueda
    LandingPage.Ir a Seccion Categorias
    LandingPage.Seleccionar Categoria Equipo Mueve Tierra
    #LandingPage.Go to Event Calendar

Select Product from Search Results
    SearchResults.Click Product link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded

Become a Host
    LandingPage.Load Homepage
    LandingPage.Homapage Loaded
    LandingPage.Go to Nav Menu
    LandingPage.Select Become a Host
    BecomeHost.Host Loaded
    BecomeHost.Get Started
    BecomeHost.Fill Up Sign Up Form


