local onInitializedAndLoadedMessenger = {}

local function onInit(param1,param2)
	print("initialize,pre loaded")
	if param1 ~= nil then
		print(param1)
	end
	if param2 ~= nil then
		print(param2)
	end
end

local function onLoaded(loadedObject,param1,param2)
	print("object loaded")
	print(loadedObject)
	if param1 ~= nil then
		print(param1)
	end
	if param2 ~= nil then
		print(param2)
	end
end

onInitializedAndLoadedMessenger.init = onInit
onInitializedAndLoadedMessenger.loaded = onLoaded

return onInitializedAndLoadedMessenger