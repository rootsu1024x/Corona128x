local physicsRectTest = {}

local function getComponent(name)
	print(name)
	local componentSpec = {
		behavior={
			{
				density=1.0,
				friction=0.5,
				bounce=0.2,
			}
		},
	}
	return componentSpec
end

physicsRectTest.getComponent = getComponent

return physicsRectTest
