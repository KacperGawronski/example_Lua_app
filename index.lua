
function generate_content()
	coroutine.yield("<div id=\"table_buttons\">"..table_buttons().."</div>")
	coroutine.yield("<div id=\"main_table_div\"><table id=\"main_table\">")
	coroutine.yield("</table></div>")
end
