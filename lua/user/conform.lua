local status_ok, conform = pcall(require, "conform")
if not status_ok then
	print("Not okay conform")
	return
end

conform.setup({
	formatters_by_ft = {
		javascript = { "prettierd", "prettier" },
		typescript = { "prettierd", "prettier" },
		javascriptreact = { "prettierd", "prettier" },
		typescriptreact = { "prettierd", "prettier" },
		html = { "prettierd", "prettier" },
		tmpl = { "prettierd", "prettier" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
