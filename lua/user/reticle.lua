local status_ok, reticle = pcall(require, "reticle")
if not status_ok then
	return
end

reticle.setup()
