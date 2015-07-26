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
  webView:request("https://www.bing.com")
  group:insert(webView)
end

scene:addEventListener("create", scene)

return scene
