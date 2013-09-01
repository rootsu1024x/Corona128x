local physicsComponentDefaults = {
	type=nil,
	isBullet=nil,
	isSensor=nil,
	isFixedRotation=nil,
	behavior={
		{
			density=nil,
			friction=nil,
			bounce=nil,
			radius=nil,
			shape=nil,
			filter=nil
		}
	},
	additionalTable=nil,
	eventsArray=nil,
	onInitialize=nil,
	initializeTable=nil,
	onLoaded=nil,
	loadedTable=nil
}

return physicsComponentDefaults