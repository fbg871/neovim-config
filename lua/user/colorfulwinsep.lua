local ok, colorful_winsep = pcall(require, "colorful-winsep")
if not ok then
	return
end

colorful_winsep.setup({})
