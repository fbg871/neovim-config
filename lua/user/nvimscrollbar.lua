local status_ok, nvimscrollbar = pcall(require, "scrollbar")
if not status_ok then
	return
end

nvimscrollbar.setup({})
