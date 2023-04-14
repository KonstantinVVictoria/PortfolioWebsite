local MainPage = HTML:new_webpage()

MainPage.Head = {
    (title)(){config.website_title}(title),   
    (link)({rel="preconnect", href="https://fonts.googleapis.com"})(),
    (link)({rel="preconnect", href="https://fonts.gstatic.com", crossorigin = true})(),
    (link)({href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Quicksand&display=swap", rel="stylesheet"})(),    
}

MainPage.Body = {}

MainPage.Footer = {}


return MainPage