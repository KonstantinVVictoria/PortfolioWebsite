local MainPage = HTML.new_webpage()
MainPage.Head = {
    GFont("Mulish")
}

local styles = {
    SearchContainer = {
        display = "flex",
        ["align-items"] = "center",
        ["justify-content"] = "center",
        ["flex-direction"] = "column",
        height = "100vh",
        width = "100vw"
    },
    SearchHeader = {
        ["font-size"] = "4rem"
    },
    SearchBarContainer = {
        display = "flex",
        ["align-items"] = "center",
        border = "1px solid black",
        overflow = "hidden",
        ["border-radius"] = "50px"
    },
    SearchInput = {
        width = "30rem",
        ["font-size"] = "1.2rem",
        height = "100%",
        margin = "0px",
        padding = "0rem 0.7rem",
        border = "none",
        ["outline"] = "none"
    },
    SearchInputButton = {
        height = "100%",
        margin = "0px",
        ["font-size"] = "1.2rem",
        border = "none",
        cursor = "pointer",
        padding = "0.4rem 0.7rem"
    }
    
}
MainPage.Body = {
    (div)({
        style = styles.SearchContainer
    }){
        (h1)({
            style = styles.SearchHeader
        }){
            "Shovels.ai Assistant"
        }(h1),
        (div)({
            style = styles.SearchBarContainer
        }){
            (input)({
                id = "input",
                style = styles.SearchInput
            })(),
            (button)({
                style = styles.SearchInputButton,
                onclick = JS("query")("input")
            }){"Search"}(button),
        }(div),
        (h1)({
            id = "answer"
        }){
            
        }(h1)
    }(div)
}
return MainPage