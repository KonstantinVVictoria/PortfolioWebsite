
local styles = require("./components/Wiki/styles")
return HTML.Component:new(
    function(config)
        local title = config.title or ""
        local id = config.href or ""
        return 
            (section)({
                style=styles.DocumentSectionContainer,
            }){
                (h1)({
                    id = id,
                    class="document_section_header",                
                    style = {
                        display = "flex",
                        ["justify-content"] = "flex-end",
                        color = _global.theme.trim.primary.color,
                        ["font-size"] = "2rem"
                    }
                }){
                    title
                }(h1),
                (main)({
                    class="document_section_main",
                    style = {
                        display = "flex",
                        ["flex-direction"] = "column",
                        color = _global.theme.trim.primary.color,
                        ["border-right"] = "1px solid " .. _global.theme.background.tetiary.color
                    }
                }){
                    config.children
                }(main)
            }(section)
    end
)