local styles = require("./components/Banner/styles")
return HTML.Component:new(
    function(config)
        local height = config.height or "27rem"
        local width = config.width or "45rem"
        local image = config.image or ""
        return 
            (div)({
                class = "banner_container",
                style = {
                    styles.BannerContainer,
                    {
                        height = config.height,
                        width = config.width,
                        ["background-image"] = string.format("url(%s)", image)
                    },
                    config.style or {},
                }
            }){
                config.children or ""
            }(div)
    end)