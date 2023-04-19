return {
    NavbarContainer = {
        position = "fixed",
        display = "flex",
        ["justify-content"] = "center",
        ["align-items"] = "center",
        gap = "2rem",
        ["background-color"] = _theme.background.primary.translucent,
        ["backdrop-filter"] = "blur(8px)",
        ["color"] =  _theme.trim.primary.color,
        padding = "1rem",
        ["font-size"] = "1rem",
        width = "100vw",
        top = "0px",
        ["border-top"] = "2px solid rgba(249, 194, 60)",
        ["z-index"] = "100"
        
    },
    NavbarItem = {
        ["border-bottom"] = "2px solid rgba(0, 0, 0, 0)",
        padding = "0rem 5px",
        transition = "400ms border ease",
        ["font-size"] = "1.1rem"
    }
}