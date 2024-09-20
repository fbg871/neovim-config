local status_ok, copilotcmp = pcall(require, "copilot-lua")
if not status_ok then
  return
end

copilotcmp.setup()
