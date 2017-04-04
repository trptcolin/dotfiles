package.path = package.path .. ";" .. getenv("HOME") .. "/.luarocks/share/lua/5.2/?.lua"
package.cpath = package.cpath .. ";" .. getenv("HOME") .. "/.luarocks/lib/lua/5.2/?.so"

local hotkey = require "mjolnir.hotkey"
local alert = require "mjolnir.alert"
local grid = require "mjolnir.sd.grid"

grid.MARGINX = 0
grid.MARGINY = 0
grid.GRIDWIDTH = 4

local mash = {"cmd", "alt", "ctrl"}
local mashshift = {"cmd", "alt", "shift"}

hotkey.bind(mash, "=", function() grid.adjustwidth( 1) end)
hotkey.bind(mash, "-", function() grid.adjustwidth(-1) end)

hotkey.bind(mash, "M", grid.maximize_window)

hotkey.bind(mash, "N", grid.pushwindow_nextscreen)
hotkey.bind(mash, "P", grid.pushwindow_prevscreen)

hotkey.bind(mash, "J", grid.pushwindow_down)
hotkey.bind(mash, "K", grid.pushwindow_up)
hotkey.bind(mash, "H", grid.pushwindow_left)
hotkey.bind(mash, "L", grid.pushwindow_right)

hotkey.bind(mash, "U", grid.resizewindow_taller)
hotkey.bind(mash, "O", grid.resizewindow_wider)
hotkey.bind(mash, "I", grid.resizewindow_thinner)

alert.show "Mjolnir, at your service."
