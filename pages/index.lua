local Navbar = require("./components/Navbar/Navbar")
local Banner = require("./components/Banner/Banner")
local Container = require("./components/Container/Container")
local Section = require("./components/Section/Section")
local Icon = require("./components/Icon/Icon")
local MainPage = HTML:new_webpage()

local config = {
    website_title = "LuaSparks!",
    nav = _global.nav,
    sections = {
        {
            title = "What is LuaSparks?",
            text = "Get ready to spark up your coding life with LuaSparks! It's a brilliant Lua-based full-stack framework that brings simplicity and organization to your front-end and back-end development. "
        },
        {
            title = "Fun and easy designing!",
            image = "images/css_code.png",
            text = "With Lua's easy-to-read syntax, you'll cruise through front-end logic like a champ. LuaSparks' component-based approach lets you create reusable, modular, and customizable HTML components that make your code sparkle. CSS styling? Piece of cake! LuaSparks helps you keep things neat and tidy, so you can focus on crafting stunning designs effortlessly."
        },
        {
            title = "Customizable components!",
            image = "images/component_based.png",
            text = "One of the most exciting features of LuaSparks is its component-based architecture. This approach empowers developers to build clean, maintainable, and scalable applications with ease. Say goodbye to spaghetti code and hello to beautifully organized, reusable components!"
        },
        {
            title = "Hands off routing!",
            image = "images/routing_management.png",          
            text = "On the back end, LuaSparks runs on the mighty express.js, with automatic routing that's so smooth, you won't even notice it's there. Routes are generated for your HTML pages, and APIs are a breeze - just write functions in a folder, and watch the magic happen."
        },
        -- efficent = {
        --     text = "And the cherry on top? LuaSparks automatically condenses and atomizes your CSS and JavaScript files, so you can say goodbye to redundancy and hello to efficiency."
        -- },
    },
    links = {
        github = "https://github.com/KonstantinVVictoria/LuaSparksTemplate"
    }
}

local BannerImage = 
    function (config) 
        return
        (Banner)({
            image = config.image,
            height = "20rem",
            width = "42rem",
            style = {
                margin = "1rem",
                ["box-shadow"] = config.shadows and "inset 0px 0px 10px rgba(0, 0, 0, 0.4)" or ""
            }
        })()
    end

MainPage.Head = {
    (title)(){config.website_title}(title),   
    (link)({rel="preconnect", href="https://fonts.googleapis.com"})(),
    (link)({rel="preconnect", href="https://fonts.gstatic.com", crossorigin = true})(),
    (link)({href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap", rel="stylesheet"})(),    
}

local WelcomeBanner =
    (Container)({
        style = {
        ["margin-top"] = "5rem",
        background = 'url("images/site_background.png")',
        ["background-size"] = "cover",
        ["box-shadow"] = "inset 0px 0px 10px rgba(0, 0, 0, 0.8)"
    }
    }){
        (Banner)(){
            "LuaSparks✨"
        }(Banner)
    }(Container)

local ArticleSections = {}
for i, section in ipairs(config.sections) do
    ArticleSections[i] =
       (Container)({style = { padding="1rem 0rem" }}){      
            (Section)({
                section_name = section.title,
                direction = "column"
            }){
                section.image and BannerImage{image = section.image, shadows = true} or "",
                section.text
            }(Section)
       }(Container)
end
local TryItOut =  
    (Container)({
        style = {
        ["margin-top"] = "5rem",
        ["background-color"] = _theme.background.secondary.color,
        ["background-size"] = "cover",
        ["box-shadow"] = "inset 0px 0px 10px rgba(0, 0, 0, 0.8)"
    }
    }){
        (Section)({
            section_name = "",
            direction = "column",
            style = {
                ["align-items"] = "center",
                ["font-size"] = "2rem"
            }
        }){
            "Try it out!",
            (Icon)({
                link = config.links.github, 
                image = "images/github.png",
                style = {
                    cursor = "pointer",
                    height = "8rem",
                    width = "8rem",
                    margin = "2rem"
                }
            })()
        }(Section)
    }(Container)
    
MainPage.Body = {
    (Navbar)({items = config.nav.items})(),
    WelcomeBanner,
    ArticleSections,
    TryItOut
}

MainPage.Footer = {
    (Container)(){
        (Section)({
            direction = "column",
            style = {
                ["align-items"] = "center",
            }
        }){
            _global.footer.copyright
        }(Section),
    }(Container),
}


return MainPage