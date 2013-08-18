local imageTest = {}

local function newImage(parent)
	local image = display.newImageRect(parent,"Image/bullet.png",120,60)
	image:setReferencePoint(display.CenterLeftReferencePoint)
	image.x = 20
	image.y = 20
	image.rotation = 30
end

imageTest.newImage = newImage

return imageTest