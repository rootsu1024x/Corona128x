local c128x = {}

c128x.load = function (name)
	if name == "display" then
		return require("ComponentManager.DisplayComponentManager")
	end
end

return c128x
