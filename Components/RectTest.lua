local rectTest = {}

local function getComponent(name)
	print(name)
	local xPos = 130
	if name == "MyRect2" then
		xPos = 250
	end
	local componentSpec = {
		type = "rect",
		groupName = "game",
		layerName = "near",
		x = xPos,
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
