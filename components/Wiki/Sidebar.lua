local styles = require("./components/Wiki/styles")
local reference = require("./components/Wiki/Sections/reference")

local Selection = HTML.Component:new(
    function(config)
        local label = config.label
        local id = config.id
        local href = config.href or ""
       return
            (p)({
                id = id,
                style = {
                    display = "flex",
                    width = "100%",
                    ["align-items"] = "center",
                    ["justify-content"] = "center",
                    height = "4rem",
                    ["font-size"] = "1rem",
                    color = _global.theme.trim.primary.color,
                    cursor = "pointer",
                    transition = "background 200ms ease",
                    ["flex-shrink"] = "0",
                },
                onmouseover = JS("hoverColor")(id, "rgba(0, 0, 0, 0.2)"),
                onmouseleave = JS("hoverColor")(id, "rgba(0, 0, 0, 0)"),
                onclick=JS("linkTo")("/reference#" .. href)
            }){
                label
            }(p) 
    end
)


local Selections = {}

for i, selection in ipairs(reference) do
    Selections[i] = Selection({label = selection.label, href = selection.href, id = "selection_" .. i})()
end

return HTML.Component:new(
    function(config)
        return
        (aside)({
            class="sidebar_container",
            style = styles.SidebarContainer
        }){
            Selections
        }(aside)
    end
)