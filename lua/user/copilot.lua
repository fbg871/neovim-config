local ok, copilot = pcall(require, "copilot")
if not ok then
	return
end

copilot.setup({
	suggestion = { auto_trigger = true },
	-- panel = {enabled = false}
})

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<c-s>", "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)
