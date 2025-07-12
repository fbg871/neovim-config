local status_ok, neoscroll = pcall(require, "neoscroll")
if not status_ok then
	return
end

neoscroll.setup({
	duration_multiplier = 0.4,
})
