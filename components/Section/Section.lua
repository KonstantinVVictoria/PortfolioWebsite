local styles = require("./components/Section/styles")
return HTML.Component:new(
    function(config)
        local section_id = config.section_id or ""
        local section_name = config.section_name or ""
        local direction = config.direction or "row"
        return 
            (section)({
                class="generic_container",
                id = section_id,
                style = styles.SectionContainer
            }){
                (h1)(
                    {
                        style = styles.SectionHeader
                    }
                ){
                    section_name
                }(h1),
                (div)(
                    {
                        style = {
                            styles.InnerContainer,
                            {
                                ["flex-direction"] = direction
                            },
                            config.style or {}
                        }
                    }
                ){
                    config.children
                }(div)
            }(section)
    end
)