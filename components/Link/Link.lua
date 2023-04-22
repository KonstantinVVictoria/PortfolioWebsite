return HTML.Component:new(
    function(config)
        local href = config.href or ""
        local label = config.label or ""
        return
            (a)({
                href=href,
                style = {
                    ["text-decoration"] = "underline",
                    ["text-decoration-color"] = _global.theme.background.tetiary.color .. " !important",
                    ["word-wrap"] = "break-word"
                }
            }){
                label == "" and href or label
            }(a)
    end
)