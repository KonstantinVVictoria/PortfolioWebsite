local styles = require("./components/Banner/styles")
return HTML.Component:new(
    function(config)
        return 
            (div)({
                style = styles.BannerContainer
            }){
                config.children
            }(div)
    end)