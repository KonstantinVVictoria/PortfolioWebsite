local styles = require("./components/Contacts/styles")
local function Social(label, icon, link)
    return
        (div)({
            style=styles.SocialContainer
        }){
            (img)({
                style = {
                    height = "100%",
                    width = "100%",
                    filter = "invert()"
                },
                src=icon
            })(),
        }(div)
end


local config = {
    socials = {
        Social("Instagram", "images/instagram_icon.png", ""),
        Social("Github", "images/github_icon.png", ""),
        Social("Email", "images/email_icon.png", "")
    }
}
local Socials = {}

for i, social in ipairs(config.socials) do
    Socials[i] = social
end

return HTML.Component:new(
    function(config)
        local height = config.height or ""
        local width = config.width or ""
        return
        (div)({
            style= {
                {
                    height = height,
                    width = width,
                },
                styles.SocialsContainer
            }
        }){
            Socials,
            (p)({
                style = {
                    position = "absolute",
                    display = "flex",
                    ["align-items"] = "center",
                    ["justify-content"] = "center",
                    ["font-size"] = "2rem",
                    height = "2rem",
                    width = "2rem",
                    right = "-0.5rem",
                    top = "-0.5rem",
                    ["border-radius"] = "100%",
                    ["background-color"] = "red",
                    
                }
            }){
                "x"
            }(p)
        }(div)
    end
)