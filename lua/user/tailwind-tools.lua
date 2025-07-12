local status_ok, tailwind_tools = pcall(require, "tailwind-tools")
if not status_ok then
	return
end

tailwind_tools.setup({})
