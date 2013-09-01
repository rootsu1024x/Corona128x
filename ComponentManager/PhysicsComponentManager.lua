local physicsComponentManager = {}

local physics = require("physics")

local commonFunction = require("ComponentManager.CommonFunction")

local setNilToAny = commonFunction.setNilToAny
local setIsntNil = commonFunction.setIsntNil
local runIsntNil = commonFunction.runIsntNil 
local setEvents = commonFunction.setEvents
local setAdditionalTable = commonFunction.setAdditionalTable

local function applyPhysicsComponent(componentFile,componentName,displayObject)
	local components = require(componentFile)
	local componentSpec = components.getComponent(componentName)
	setNilToAny(componentSpec,"type","dynamic")
	runIsntNil(componentSpec,"onInitialize",componentSpec.initializeTable)
	if table.maxn(componentSpec.behavior) == 1 then
		physics.addBody(displayObject,componentSpec.type,componentSpec.behavior)
	elseif table.maxn(componentSpec.behavior) ~= 0 then
		physics.addBody(displayObject,componentSpec.type,unpack(componentSpec.behavior))
	end
	setIsntNil(displayObject,"isBullet",componentSpec.isBullet)
	setIsntNil(displayObject,"isSensor",componentSpec.isSensor)
	setIsntNil(displayObject,"isFixedRotation",componentSpec.isFixedRotation)
	setAdditionalTable(displayObject,componentSpec)
	setEvents(displayObject,componentSpec)
	if componentSpec.loadedTable ~= nil then
		runIsntNil(componentSpec,"onLoaded",{displayObject,unpack(componentSpec.loadedTable)})
	else
		runIsntNil(componentSpec,"onLoaded",{displayObject})
	end
	return body
end

physicsComponentManager.apply = applyPhysicsComponent

return physicsComponentManager