local status_ok, minimap = pcall(require, "minimap")
if not status_ok then
	return
end

minimap.setup()
vim.keymap.set("n", "<leader>mc", minimap.close)
vim.keymap.set("n", "<leader>mf", minimap.toggle_focus)
vim.keymap.set("n", "<leader>mo", minimap.open)
vim.keymap.set("n", "<leader>mr", minimap.refresh)
vim.keymap.set("n", "<leader>ms", minimap.toggle_side)
vim.keymap.set("n", "<leader>mt", minimap.toggle)

vim.g.minimap_width = 10
vim.g.minimap_auto_start = 1
vim.g.minimap_auto_start_win_enter = 1
