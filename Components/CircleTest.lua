local circleTest = {}

local messenger = require("Components.OnInitializedAndLoadedMessenger")

local circlePool = {}

local function getComponent(name)
	print(name)
	local componentSpec = {
		type = "circle",
		groupName = "game",
		layerName = "near",
		x = 120,
		y = 200 * circleTest.getLoadedCircleNum(),
		radius = 50,
		refX = "Left",
		refY = "Top",
		stroke = {r=255,width=5},
		color = {g = 255,b = 255},
		alpha = 0.5,
		xScale = 0.7,
		onInitialize = messenger.init,
		initializeTable = {"created circles :",table.maxn(circlePool)},
		onLoaded = function(loadedObject) table.insert(circlePool,loadedObject) end,
		additionalTable = {shapeType = "lens"},
		eventsArray = {{eventName="touch",onEvent=function(event) event.target.x = event.target.x + 20 print(event.target.shapeType)end}}
	}
	return componentSpec
end

circleTest.getComponent = getComponent
circleTest.getLoadedCircleNum = function() return table.maxn(circlePool) end

return circleTest
