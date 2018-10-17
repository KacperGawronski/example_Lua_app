--[[This file is part of Example Lua App.

Example Lua App is free software: you can redistribute it and/or
modify it under the terms of the GNU General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Example Lua App is distributed in the hope that it will be
useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Example Lua App. If not, see
https://www.gnu.org/licenses/


dofile("index.lua")
dofile("menu.lua")
dofile("head.lua")
--]]
function process_request(http_request)
	local function main()
		local GET_value=string.gsub(http_request,"GET (.-) HTTP/1%.1.*","%1")
		coroutine.yield("GHTTP/1.1 200 OK\r\nContent-Type: text/html; charset=UTF-8\r\nConnection: close\r\n\r\n")

		if GET_value=="/" then
			coroutine.yield("<html><body>")
			--	for content in generate_head() do if content coroutine.yield(content) end end
			coroutine.yield("<h1 id=\"header\">Example project</h1>")
			coroutine.yield("<div id=\"menu\">"
			--	for content in generate_menu() do if content then coroutine.yield(content) end end
			coroutine.yield("</div><div id=\"main\">")
			--	for content in generate_content() do if content then coroutine.yield(content) end end
			coroutine.yield("</div>")
			coroutine.yield("</body></html>")
		else
			print("HACKERZ SPOTTED")
		end
	end
	return main
end
