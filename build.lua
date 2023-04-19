_route_path = './?.lua;' .. package.path
package.path = _route_path
HTML = require("./modules/HTML/HTML")

local index = require("./pages/index")
local reference_page = require("./pages/reference")

index.write_to("/index.html")
reference_page.write_to("/reference.html")
HTML:render()