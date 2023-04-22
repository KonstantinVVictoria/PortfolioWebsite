return {
    Viewport = {
        display = " flex",
        width = "100vw",
        ["padding-top"] = "4rem",
        height = "95vh",
        ["overflow"] = "auto"
    },
    SidebarContainer = {
        display= "flex",
        position = "absolute",
        width = "20rem",
        ["border-right"] = "2px solid " .. _global.theme.background.secondary.color,
        ["flex-direction"] = "column",
        ["overflow-y"] = "scroll",
        height = "88vh",
    },
    DocumentContainer = {
        height = "100%",
        width = "100%",
        padding = "0rem 8rem",
        ["box-sizing"] = "border-box",
        ["margin-left"] = "20rem",
    },
    DocumentSectionContainer = {
        width = "100%",
        ["margin-bottom"] = "3rem"
    }
}