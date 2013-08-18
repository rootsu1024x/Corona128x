local rrectTest = {}

local function getComponent(name)
	print(name)
	local componentSpec = {
		type = "roundedRect",
		groupName = "game",
		layerName = "near",
		x = 120,
		y = 400,
		w = 20,
		h = 70,
		radius=10,
		refX = "Left",
		refY = "Bottom",
		angle = 30
	}
	return componentSpec
end

rrectTest.getComponent = getComponent

return rrectTest
