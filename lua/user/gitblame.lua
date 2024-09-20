local status_ok, gitblame = pcall(require, "gitblame")
if not status_ok then
	return
end

gitblame.setup({
	delay = 250,
	-- virtual_text_column = 80,
	highlight_group = "GitBlame",
})
