local Navbar = require("./components/Navbar/Navbar")
local Banner = require("./components/Banner/Banner")
local Container = require("./components/Container/Container")
local MainPage = HTML:new_webpage()

local config = {
    website_title = "UI Testing",
    nav = {
        items = {
            {
                link = "",
                label = "Home"
            },
            {
                link = "",
                label = "Contact Us"
            },
            {
                link = "",
                label = "Reference"
            }
        }
    }
}
MainPage.Head = {
    (title)(){config.website_title}(title),   
    (link)({rel="preconnect", href="https://fonts.googleapis.com"})(),
    (link)({rel="preconnect", href="https://fonts.gstatic.com", crossorigin = true})(),
    (link)({href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap", rel="stylesheet"})(),    
}

MainPage.Body = {
    (Navbar)({items = config.nav.items})(),
    (Container)({}){(Banner)(){"LuaSparks✨"}(Banner)}(Container)
}

MainPage.Footer = {}


return MainPage