local reference = require("./components/Wiki/Sections/reference")
local HowtoInstall = require("./components/Wiki/Sections/HowtoInstall")
local FolderStructure = require("./components/Wiki/Sections/FolderStructure")
return {
    HowtoInstall(reference[1]),
    FolderStructure(reference[2])
}