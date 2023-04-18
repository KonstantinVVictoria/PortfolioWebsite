local styles = require("./components/Navbar/styles")

local function Navitem(config)
    local label = config.label
    local href = config.link
    return 
        (a)({
            href = href
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
                style=styles.NavbarContainer
            }){
                NavItems
            }(div)
    end
)

