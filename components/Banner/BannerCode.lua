local Banner = require("./components/Banner/Banner")
return
    HTML.Component:new(
        function (config) 
            local width = config.width
            local height = config.height
            if(config.id == nil) then
                warn("BannerCode needs a unique ID")
            end
            local id = config.id or ""
            return
            (div)({
                onclick=JS("saveToClipboard")(config.children[1]),
                onmouseover=JS("hoverColor")(id, "rgb(3, 90, 38)"),
                onmouseleave=JS("hoverColor")(id, "")
            }){
                (Banner)({
                    id = id,
                    style = {
                        position = "relative !important",
                        margin = "1rem !important",
                        padding = "1rem",
                        ["box-shadow"] = "inset 0px 0px 10px rgba(0, 0, 0, 0.4)",
                        ["background-color"] = "rgb(30, 30, 30)",
                        height = height ~= "" and height or "auto",
                        width =  width ~= "" and width or "auto",
                        ["text-align"] = "center",
                        cursor = "pointer",
                        transition = "200ms ease background-color !important",
                    }
                }){
                    (p)({
                        style = {
                            color = _global.theme.trim.primary.color,
                            ["word-wrap"] = "break-word",
                            width = "100%",
                            ["font-family"] = "Courier, monospace",
                            ["font-size"] = "1rem"
                        }

                    }){config.children}(p)
                }(Banner)
            }(div)
        end)