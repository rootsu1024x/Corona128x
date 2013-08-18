local circleTest = {}

local function getComponent(name)
	print(name)
	local componentSpec = {
		type = "circle",
		groupName = "game",
		layerName = "near",
		x = 120,
		y = 200,
		radius = 50,
		refX = "Left",
		refY = "Bottom",
		angle = 30
	}
	return componentSpec
end

circleTest.getComponent = getComponent

return circleTest
