hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h

  win:setFrame(f)
end)

local sizeIncrease = 100;
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.w = f.w + sizeIncrease
  f.h = f.h + sizeIncrease
  f.x = f.x - sizeIncrease/2
  f.y = f.y - sizeIncrease/2
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.w = f.w - sizeIncrease
  f.h = f.h - sizeIncrease
  f.x = f.x + sizeIncrease/2
  f.y = f.y + sizeIncrease/2
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
	hs.reload()
end)

hs.alert.show("Hammerspoon configuration loaded")
