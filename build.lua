_route_path = './?.lua;' .. package.path -- DO NOT TOUCH
package.path = _route_path -- DO NOT TOUCH
HTML = require("./modules/HTML/HTML") -- DO NOT TOUCH
--import webpages:
local MainPage = require("./pages/index")
--Define webpage routes here:
MainPage.route("/")

HTML:render() -- DO NOT TOUCH