local lineTest = {}

local function getComponent(name)
	print(name)
	local componentSpec = {
		type = "line",
		groupName = "game",
		layerName = "near",
		x = 0,
		y = 0,
		x2 = display.contentWidth,
		y2  = display.contentHeight,
		refX = "Left",
		refY = "Top",
		angle = 0
	}
	return componentSpec
end

lineTest.getComponent = getComponent

return lineTest
