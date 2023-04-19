local styles = require("./components/Navbar/styles")

local function Navitem(config)
    local label = config.label
    local href = config.link
    return 
        (a)({
            style = styles.NavbarItem,
            href = href,
            id = config.label .. "_navitem",
            onmouseover = JS("hoverBorderNavItem")(config.label .. "_navitem", 1),
            onmouseleave = JS("hoverBorderNavItem")(config.label .. "_navitem", 0)
        }){
            label
        }(a)
end

return HTML.Component:new(
    function(config)
        local items = config.items or {}
        local NavItems = {}
        for i, value in ipairs(items) do
            NavItems[i] = Navitem(value)
        end
        return 
            (div)({
                id="navbar_container",
                style=styles.NavbarContainer
            }){
                NavItems
            }(div)
    end
)

