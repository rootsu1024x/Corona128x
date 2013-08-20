local storyboard = require("storyboard")

local scene = storyboard.newScene()

function scene:createScene(event)
	local componentMan = require("ComponentManager.DisplayComponentManager")
	componentMan.groups.new(self.view,"game",{"far","near","fore"})
	componentMan.load("Components.ImageTest","MyImage")
	componentMan.load("Components.RectTest","MyRect")
	componentMan.load("Components.RoundedRectTest","MyRoundedRect")
	componentMan.load("Components.CircleTest","MyCircle")
	componentMan.load("Components.CircleTest","MyCircle")
	componentMan.load("Components.LineTest","MyLine")
	componentMan.load("Components.TextTest","MyText")
end

scene:addEventListener( "createScene" )

function scene:destroyScene(event)
	print("destroy game scene")
end

scene:addEventListener( "destroyScene" )

return scene