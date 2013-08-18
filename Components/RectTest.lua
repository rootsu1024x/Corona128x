local rectTest = {}

local function getComponent(name)
	print(name)
	local componentSpec = {
		type = "rect",
		groupName = "game",
		layerName = "near",
		x = 190,
		y = 100,
		w = 60,
		h = 40,
		refX = "Left",
		refY = "Bottom",
		angle = 30
	}
	return componentSpec
end

rectTest.getComponent = getComponent

return rectTest
