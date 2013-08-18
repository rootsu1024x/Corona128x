local imageTest = {}

local function getComponent(name)
	print(name)
	local componentSpec = {
		type = "image",
		groupName = "game",
		layerName = "near",
		x = 20,
		y = 20,
		w = 120,
		h = 60,
		file = "Image/bullet.png",
		refX = "Left",
		angle = 30
	}
	return componentSpec
end

imageTest.getComponent = getComponent

return imageTest
