
local Section = require("./components/Section/Section")
local Link = require("./components/Link/Link")
local Banner = require("./components/Banner/Banner")
local BannerImage = require("./components/Banner/BannerImage")
local DocumentSection = require("./components/Wiki/DocumentSection")


return
    function(config)
        local href = config.href
        local title = config and config.label or ""
        return
            (DocumentSection)({
                title = title,
                href = href,
            }){
                (Section)({
                    section_name = "Introduction to Folder Structure",
                    direction = "column"
                }){
                    "Let's take a deep dive into LuaSpark's folder structure. Please follow the conventions laid out below."
                }(Section),
                BannerImage{image="images/folder_structure.png", shadows = false, ["background-size"] = "contain"},
                (Section)({
                    section_name = "/api",
                    direction = "column"
                }){
                    "The /api subfolder contains the javascript functions that will be called whenever /api/&ltjavascript file name&gt is called from the client-side. The convention is to have a folder structure that indicate its request method type: /api/&ltrequest&gt/&ltjavascript file name&gt or, for example: /api/get/helloWorld.js"
                }(Section),
                (Section)({
                    section_name = "/components",
                    direction = "column"
                }){
                    "The /components subfolder contains all of the HTMLLUA components. HTMLLUA is essentially LuaSparks' alternative of JSX components. The convention is to have a subfolder for each component: /components/&ltcomponent name&gt"
                }(Section),
                (Section)({
                    section_name = "/javascript",
                    direction = "column"
                }){
                    "The /javascript subfolder contains all of the javascript functions that will be excuted by your app. Through this convention, you are forced to create javascript functions that are reusable and extensible, ensuring efficient that you write efficient code."
                }(Section),
                (Section)({
                    section_name = "/meta",
                    direction = "column"
                }){
                    "The /meta subfolder contains a singular global variable that can be accessed from an lua file. This is a convenient place to store themes and information that is required in multiple webpages."
                }(Section),
                (Section)({
                    section_name = "/modules",
                    direction = "column"
                }){
                    "The /modules subfolder contains all the core files of the LuaSparks framework. We recommend that you do not touch these files unless you know what you are doing or are instructed by the developer."
                }(Section),
                (Section)({
                    section_name = "/node_modules",
                    direction = "column"
                }){
                    "The /node_modules subfolder contains all the required libraries for epxress.js and the development kit: nodemon and refresh."
                }(Section),
                (Section)({
                    section_name = "/pages",
                    direction = "column"
                }){
                    "The /pages subfolder contains all the pages of your website. There should be no subfolder in this folder as LuaSparks parses through the folder to create routes for the site."
                }(Section),
                (Section)({
                    section_name = "/state",
                    direction = "column"
                }){
                    "The /state subfolder contains state variables that when change will re-render portions of the page. The manner in which these states are imperative, meaning you have to reference to specific elements in the DOM to rerender."
                }(Section),
                (Section)({
                    section_name = "/styles",
                    direction = "column"
                }){
                    "The /styles subfolder contains the global css stylesheet which is where you define all your media-queries or event-driven styling properties.."
                }(Section),
                (Section)({
                    section_name = "/website",
                    direction = "column"
                }){
                    "The /website subfolder contains the rendered/compiled files that will ship to the front-end. This folder contains your production-ready files."
                }(Section),
            }(DocumentSection)
    end