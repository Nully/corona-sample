local composer = require "composer"
local scene = composer.newScene()

composer.recycleOnSceneChange = true

W = display.contentWidth
H = display.contentHeight

function scene:create(event)
  local group = self.view
  local webView = native.newWebView(0, 0, display.contentWidth, display.contentHeight - 50)
  webView.anchorX= 0
  webView.anchorY = 0
  webView.Y = H
  webView:request("http://www.yahoo.co.jp")
  group:insert(webView)
end

function scene:hide(event)
  local group = self.view
end


scene:addEventListener("create", scene)
scene:addEventListener("hide", scene)

return scene
