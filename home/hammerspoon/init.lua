local hotkey = require "hs.hotkey"
local alert = require "hs.alert"
local grid = require "hs.grid"

grid.MARGINX = 0
grid.MARGINY = 0
grid.GRIDWIDTH = 4
grid.GRIDHEIGHT = 4

local mash = {"cmd", "alt", "ctrl"}
local mashshift = {"cmd", "alt", "shift"}

hotkey.bind(mash, "M", grid.maximizeWindow)

hotkey.bind(mash, "N", grid.pushWindowNextScreen)
hotkey.bind(mash, "P", grid.pushWindowPrevScreen)

hotkey.bind(mash, "J", grid.pushWindowDown)
hotkey.bind(mash, "K", grid.pushWindowUp)
hotkey.bind(mash, "H", grid.pushWindowLeft)
hotkey.bind(mash, "L", grid.pushWindowRight)

hotkey.bind(mash, "R", hs.reload)

hotkey.bind(mash, "U", grid.resizeWindowTaller)
hotkey.bind(mash, "Y", grid.resizeWindowShorter)
hotkey.bind(mash, "O", grid.resizeWindowWider)
hotkey.bind(mash, "I", grid.resizeWindowThinner)

alert.show "Hammerspoon, at your service."
