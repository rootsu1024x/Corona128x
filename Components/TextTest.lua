local textTest = {}

local function getComponent(name)
	print(name)
	local componentSpec = {
		type = "text",
		groupName = "game",
		layerName = "near",
		x = 120,
		y = 60,
		refX = "Left",
		refY = "Bottom",
		angle = -20,
		fontSize = 24,
		fontName = native.systemFont,
		text = "Corona 128x"
	}
	return componentSpec
end

textTest.getComponent = getComponent

return textTest
