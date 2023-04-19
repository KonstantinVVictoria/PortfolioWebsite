return HTML.Component:new(
    function(config)
        local image = config.image or ""
        local link = config.link or ""

        return 
            (img)({
                style = config.style or {},
                src=image,
                onclick=JS("linkTo")(link)
            })()

    end
)