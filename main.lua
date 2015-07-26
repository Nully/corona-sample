-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

W = display.contentWidth
H = display.contentHeight

local composer = require "composer"
local widget = require "widget"

local tabButtons = {
  {
    label = "Google",
    id = "tab1",
    selected = true,
    onPress = function() composer.gotoScene("google", {effect="fromRight", time=300}); end
  },
  {
    label = "Yahoo",
    id = "tab2",
    onPress = function() composer.gotoScene("yahoo", {effect="fromRight", time=300}); end
  },
  {
    label = "Bing",
    id = "tab3",
    onPress = function() composer.gotoScene("bing", {effect="fromRight", time=300}); end
  }
}
local tabBar = widget.newTabBar
{
  top = H - 42,
  left = 0,
  height = 42,
  width = W,
  buttons = tabButtons
}
composer.gotoScene("google")
