local styles = require("./components/Container/styles")
return HTML.Component:new(
    function(config)
        return
            (div)({
                style = { 
                    styles.Container,
                    {
                        ["justify-content"] = config.justify or "center"
                    }
                }
            }){
                config.children
            }(div)
    end
)