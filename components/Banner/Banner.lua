local styles = require("./components/Banner/styles")
return HTML.Component:new(
    function(config)
        local height = config.height or "27rem"
        local width = config.width or "45rem"
        local image = config.image or ""
        local id = config.id or ""
        local parametric_style = {
            height = height,
            width = width,
        }
        if image ~= "" then parametric_style["background-image"] = string.format("url(%s)", image) end
        return 
            (div)({
                id = id,
                class = "banner_container",
                style = {
                    styles.BannerContainer,
                    parametric_style,
                    config.style,
                }
            }){
                config.children or ""
            }(div)
    end)