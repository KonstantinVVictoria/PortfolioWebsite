local Navbar = require("./components/Navbar/Navbar")
local Banner = require("./components/Banner/Banner")
local Container = require("./components/Container/Container")
local Section = require("./components/Section/Section")
local Icon = require("./components/Icon/Icon")
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
        },
    },
}

MainPage.Head = {
    (title)(){config.website_title}(title),   
    (link)({rel="preconnect", href="https://fonts.googleapis.com"})(),
    (link)({rel="preconnect", href="https://fonts.gstatic.com", crossorigin = true})(),
    (link)({href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap", rel="stylesheet"})(),    
}
    
MainPage.Body = {
    (Navbar)({items = config.nav.items})(),
}

MainPage.Footer = {
    (Container)(){
        (Section)({
            direction = "column",
            style = {
                ["align-items"] = "center",
            }
        }){
            "Konstantin Victoria 4/19/2023"
        }(Section),
    }(Container),
}


return MainPage