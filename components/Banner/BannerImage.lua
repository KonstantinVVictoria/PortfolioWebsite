local Banner = require("./components/Banner/Banner")
return
    function (config)
        return
        (Banner)({
            image = config.image,
            height = "20rem",
            width = "42rem",
            style = {
                margin = "1rem",
                ["box-shadow"] = config.shadows and "inset 0px 0px 10px rgba(0, 0, 0, 0.4)" or "",
                ["background-size"] = config["background-size"] or "cover"
            }
        })()
    end