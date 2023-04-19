return {
    SectionContainer = {
        --border = "1px solid " .. _theme.trim.primary.color,
        width = "49rem",
        --["border-radius"] = _theme.border.primary.radius,
    },
    SectionHeader = {
        display = "flex",
        ["align-items"] = "center",
        ["padding"] = "0.5rem 0rem",
        width = "100%",
        ["font-size"] = "1.5rem",
        color = _theme.trim.primary.color,
        ["background-color"] = "none",
        --["border-bottom"] = "1px solid " .. _theme.trim.primary.color,
    },
    InnerContainer = {
        display = "flex",
        ["justify-content"] = "center",
        padding = "1rem",
        ["font-size"] = "1.1rem",
        color = _theme.trim.primary.color,
    }
}