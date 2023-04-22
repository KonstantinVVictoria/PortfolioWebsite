
local Section = require("./components/Section/Section")
local Link = require("./components/Link/Link")
local Banner = require("./components/Banner/Banner")
local BannerCode = require("./components/Banner/BannerCode")
local DocumentSection = require("./components/Wiki/DocumentSection")

return
    function(config)
        local title = config and config.label or ""
        local href = config.href or ""
        return
            (DocumentSection)({
                title = title,
                href = href
            }){
                (Section)({
                        section_name = "1. Install LUA",
                        direction = "column"
                    }){
                        "To install LUA, please visit: ",
                        (Link)({href="https://www.lua.org/download.html"}){}(Link)
                    }(Section),
                    (Section)({
                        section_name = "2. Install Node.js",
                        direction = "column"
                    }){
                        "To install Node.js, please visit: ",
                        (Link)({href= "https://nodejs.org/en/download"}){}(Link)
                    }(Section),
                    (Section)({
                        section_name = "3. Install Git and create Github account.",
                        direction = "column"
                    }){
                        "To install Git, please visit: ",
                        (Link)({href= "https://git-scm.com/book/en/v2/Getting-Started-Installing-Git"}){}(Link),
                        (br)()(),
                        "and to create a Github account, go to: ",
                        (Link)({href= "https://github.com/join"}){}(Link),
                    }(Section),
                    (Section)({
                        section_name = "3. Install Git and create Github account.",
                        direction = "column"
                    }){
                        "To install Git, please visit: ",
                        (Link)({href= "https://git-scm.com/book/en/v2/Getting-Started-Installing-Git"}){}(Link),
                        (br)()(),
                        "and to create a Github account, go to: ",
                        (Link)({href= "https://github.com/join"}){}(Link),
                    }(Section),
                    (Section)({
                        section_name = "4. Git clone the LuaSparks! template.",
                        direction = "column"
                    }){
                        "The following is the link to the repository: ",
                        "Type the following command into your terminal on the desired directory in which you'd like to install LuaSparks! :",
                        (br)()(),
                        (br)()(),
                        (Link)({href= "https://github.com/KonstantinVVictoria/LuaSparksTemplate"}){}(Link),
                        (BannerCode)({id="banner_code_github_link", height = "auto !important"}){"git clone https://github.com/KonstantinVVictoria/LuaSparksTemplate"}(BannerCode),
                        "Make sure to install the necessary npm packages :",
                        (BannerCode)({id="npm_install", height = "auto !important"}){"npm install"}(BannerCode)
                    }(Section),
                    (Section)({
                        section_name = "5. Run your project!",
                        direction = "column"
                    }){
                        "To run your project, simply run this command on your terminal:",
                        (br)()(),
                        (br)()(),
                        (BannerCode)({id="npm_run_dev", height = "auto !important"}){"npm run dev"}(BannerCode)
                    }(Section)
            }(DocumentSection)
    end