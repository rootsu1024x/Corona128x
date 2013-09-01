local commonFunction = {}

local function setNilToAny(target,propertyName,anything)
	if target[propertyName] == nil then
		target[propertyName] = anything
	end
end

local function setIfToAny(target,propertyName,condition,anything)
	if target[propertyName] == condition then
		target[propertyName] = anything
	end
end

local function setNilToZero(target,propertyNames)
	for i = 1,table.maxn(propertyNames) do
		if target[propertyNames[i]] == nil then
			target[propertyNames[i]] = 0
		end
	end
end

local function setIsntNil(target,property,source)
	if source == nil then
		return
	else
		target[property] = source
	end
end

local function runIsntNil(target,property,additionalTable)
	if target[property] ~= nil then
		if additionalTable ~= nil then
			target[property](unpack(additionalTable))
		else
			target[property]()
		end
	end
end

local function setAdditionalTable(displayObject,componentSpec)
	if componentSpec.additionalTable ~= nil then
		for key,value in pairs(componentSpec.additionalTable) do
			displayObject[key] = value
		end
	end
end

local function setEvents(displayObject,componentSpec)
	if componentSpec.eventsArray ~= nil then
		for i = 1,table.maxn(componentSpec.eventsArray) do
			displayObject:addEventListener(componentSpec.eventsArray[i].eventName,componentSpec.eventsArray[i].onEvent)
		end
	end
end


commonFunction.setNilToAny = setNilToAny
commonFunction.setIfToAny = setIfToAny
commonFunction.setNilToZero = setNilToZero
commonFunction.setIsntNil = setIsntNil
commonFunction.runIsntNil = runIsntNil
commonFunction.setAdditionalTable = setAdditionalTable
commonFunction.setEvents = setEvents

return commonFunction
