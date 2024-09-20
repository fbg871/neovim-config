local status_ok, deadcolumn = pcall(require, "deadcolumn")
if not status_ok then
  return
end

deadcolumn.setup({
  scope = 'line',
  modes = { 'i', 'ic', 'ix', 'R', 'Rc', 'Rx', 'Rv', 'Rvc', 'Rvx' },
  blending = {
    threshold = 1,
    colorcode = '#000000',
    hlgroup = {
      'Normal',
      'background',
    },
  },
  warning = {
    alpha = 0.4,
    offset = 0,
    colorcode = '#FF0000',
    hlgroup = {
      'Error',
      'background',
    },
  },
  extra = {
    follow_tw = nil,
  },
})
