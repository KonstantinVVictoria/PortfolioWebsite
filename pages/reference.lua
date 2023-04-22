local Navbar = require("./components/Navbar/Navbar")
local Container = require("./components/Container/Container")
local Section = require("./components/Section/Section")
local Wiki = require("./components/Wiki/Wiki")
local MainPage = HTML:new_webpage()

local config = {
    website_title = "LuaSparks! Reference",
    nav = _global.nav
}

MainPage.Head = {
    (title)(){config.website_title}(title),   
    (link)({rel="preconnect", href="https://fonts.googleapis.com"})(),
    (link)({rel="preconnect", href="https://fonts.gstatic.com", crossorigin = true})(),
    (link)({href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap", rel="stylesheet"})(),    
}
    
MainPage.Body = {
    (Navbar)({items = config.nav.items})(),
    (Wiki)()()
}

MainPage.Footer = {}


return MainPage