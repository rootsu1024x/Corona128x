local storyboard = require("storyboard")

local scene = storyboard.newScene()

function scene:createScene(event)
	local componentMan = require("ComponentManager.DisplayComponentManager")
	local physicsMan = require("ComponentManager.PhysicsComponentManager")
	require("physics").start()
	require("physics").setDrawMode("debug")
	componentMan.groups.new(self.view,"game",{"far","near","fore"})
	
	local phy1 = componentMan.load("Components.RectTest","MyRect")
	physicsMan.apply("Components.PhysicsTestRect","MyRect",phy1)
	local phy2 = componentMan.load("Components.RectTest","MyRect2")
	physicsMan.apply("Components.PhysicsTestRect","MyRect2",phy2)
	
	
	--[[
	componentMan.load("Components.ImageTest","MyImage")
	componentMan.load("Components.RoundedRectTest","MyRoundedRect")
	componentMan.load("Components.CircleTest","MyCircle")
	componentMan.load("Components.CircleTest","MyCircle")
	componentMan.load("Components.LineTest","MyLine")
	componentMan.load("Components.TextTest","MyText")
	]]--
end

scene:addEventListener( "createScene" )

function scene:destroyScene(event)
	print("destroy game scene")
end

scene:addEventListener( "destroyScene" )

return scene