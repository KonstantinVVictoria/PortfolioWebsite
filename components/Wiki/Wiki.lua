local styles = require("./components/Wiki/styles")
local reference = require("./components/Wiki/Sections/reference")
local Sidebar = require("./components/Wiki/Sidebar")
local SectionList = require("./components/Wiki/Sections/SectionList")


return HTML.Component:new(
    function(config)
        return
            (div)({
                class="viewport_reference",
                style = styles.Viewport
            }){
                (Sidebar)()(),
                (main)({
                    class = "document_viewport",
                    style = styles.DocumentContainer                
                }){
                    SectionList
                }(main)
            }(div)
    end
)

