function generate_head()
	coroutine.yield("<title>Example Lua App</title>")
	local f=io.open("../css/requires.txt","r")
	coroutine.yield(f:read("*all"))
end
