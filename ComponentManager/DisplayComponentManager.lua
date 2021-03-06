local displayComponentManager = {}

local groups = require("ComponentManager.DisplayGroupsManager")

displayComponentManager.groups = groups

local commonFunction = require("ComponentManager.CommonFunction")

local setNilToZero = commonFunction.setNilToZero
local setIsntNil = commonFunction.setIsntNil
local setIfToAny = commonFunction.setIfToAny
local runIsntNil = commonFunction.runIsntNil 
local setEvents = commonFunction.setEvents
local setAdditionalTable = commonFunction.setAdditionalTable

local function setCoord(displayObject,componentSpec)
	if componentSpec.movX == nil then
		setIfToAny(componentSpec,"x","Center",display.contentWidth / 2)
		displayObject.x = componentSpec.x
	else
		displayObject.x = displayObject.x + componentSpec.movX
	end

	if componentSpec.movY == nil then
		setIfToAny(componentSpec,"y","Center",display.contentHeight / 2)
		displayObject.y = componentSpec.y
	else
		displayObject.y = displayObject.y + componentSpec.movY
	end
end

local function setSizeToDisplaySizeIfMax(componentSpec)
	setIfToAny(componentSpec,"w","Max",display.contentWidth)
	setIfToAny(componentSpec,"h","Max",display.contentHeight)
end

local function setReferencePoint(displayObject,componentSpec)
	local referencePoint = nil
	local suffix = "ReferencePoint"

	local refX = componentSpec.refX
	local refY = componentSpec.refY

	if refX == nil and refY == nil then
		referencePoint = "Center"
	elseif refX == nil and refY ~= nil then
		referencePoint = refY.."Center"
	elseif refX ~= nil and refY == nil then
		referencePoint = "Center"..refX
	elseif refX ~= nil and refY ~= nil then
		referencePoint = refY..refX
	end

	displayObject:setReferencePoint(display[referencePoint..suffix])
end

local function commonShapeProc(displayObject,componentSpec)
	setReferencePoint(displayObject,componentSpec)
	setCoord(displayObject,componentSpec)
	setIsntNil(displayObject,"rotation",componentSpec.angle)
	setIsntNil(displayObject,"xScale",componentSpec.xScale)
	setIsntNil(displayObject,"yScale",componentSpec.yScale)
	setIsntNil(displayObject,"alpha",componentSpec.alpha)
end

local function setFill(displayObject,componentSpec)
	if componentSpec.color ~= nil then
		setNilToZero(componentSpec.color,{"r","g","b"})
		displayObject:setFillColor(componentSpec.color.r,componentSpec.color.g,componentSpec.color.b)
	end
end

local function setStroke(displayObject,componentSpec)
	if componentSpec.stroke ~= nil then
		setIsntNil(displayObject,"strokeWidth",componentSpec.stroke.width)
		setNilToZero(componentSpec.stroke,{"r","g","b"})
		displayObject:setStrokeColor(componentSpec.stroke.r,componentSpec.stroke.g,componentSpec.stroke.b)
	end
end

local function setStrokeAndFill(displayObject,componentSpec)
	setFill(displayObject,componentSpec)
	setStroke(displayObject,componentSpec)
end

local function loadImageComponent(componentSpec,parent)
	setSizeToDisplaySizeIfMax(componentSpec)
	local image = display.newImageRect(parent,componentSpec.file,componentSpec.w,componentSpec.h)
	commonShapeProc(image,componentSpec)
	return image
end

local function loadRectComponent(componentSpec,parent)
	setSizeToDisplaySizeIfMax(componentSpec)
	local rect = display.newRect(parent,componentSpec.x,componentSpec.y,componentSpec.w,componentSpec.h)
	commonShapeProc(rect,componentSpec)
	setStrokeAndFill(rect,componentSpec)
	return rect
end

local function loadRoundedRectComponent(componentSpec,parent)
	setSizeToDisplaySizeIfMax(componentSpec)
	local rrect = display.newRoundedRect(parent,componentSpec.x,componentSpec.y,componentSpec.w,componentSpec.h,componentSpec.radius)
	commonShapeProc(rrect,componentSpec)
	setStrokeAndFill(rrect,componentSpec)
	return rrect
end

local function loadCircleComponent(componentSpec,parent)
	local circle = display.newCircle(parent,componentSpec.x,componentSpec.y,componentSpec.radius)
	commonShapeProc(circle,componentSpec)
	setStrokeAndFill(circle,componentSpec)
	return circle
end

local function loadLineComponent(componentSpec,parent)
	local line = display.newLine(parent,componentSpec.x,componentSpec.y,componentSpec.x2,componentSpec.y2)
	commonShapeProc(line,componentSpec)
	setStroke(line,componentSpec)
	return line
end

local function loadTextComponent(componentSpec,parent)
	local text = nil
	if componentSpec.w ~= nil and componentSpec.h ~= nil then
		text = display.newText(parent,componentSpec.text,componentSpec.x,componentSpec.y,componentSpec.w,componentSpec.h,componentSpec.fontName,componentSpec.fontSize)
	else
		text = display.newText(parent,componentSpec.text,componentSpec.x,componentSpec.y,componentSpec.fontName,componentSpec.fontSize)
	end
	commonShapeProc(text,componentSpec)
	setStrokeAndFill(text,componentSpec)
	return text
end


local loadFunctionTableByType = {
	image=loadImageComponent,
	rect=loadRectComponent,
	roundedRect=loadRoundedRectComponent,
	circle=loadCircleComponent,
	line=loadLineComponent,
	text=loadTextComponent,
}

local function loadDisplayComponent(componentFile,componentName)
	local components = require(componentFile)
	local componentSpec = components.getComponent(componentName)
	local parent = groups.sets[componentSpec.groupName][componentSpec.layerName]
	runIsntNil(componentSpec,"onInitialize",componentSpec.initializeTable)
	local displayObject = loadFunctionTableByType[componentSpec.type](componentSpec,parent)
	setAdditionalTable(displayObject,componentSpec)
	setEvents(displayObject,componentSpec)
	if componentSpec.loadedTable ~= nil then
		runIsntNil(componentSpec,"onLoaded",{displayObject,unpack(componentSpec.loadedTable)})
	else
		runIsntNil(componentSpec,"onLoaded",{displayObject})
	end
	return displayObject
end

displayComponentManager.load = loadDisplayComponent

return displayComponentManager