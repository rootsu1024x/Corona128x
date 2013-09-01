local displayComponentDefaults = {
	type=nil, -- image,rect,roundedRect,circle,line,text を指定
	groupName=nil, -- グループマネージャに指定した名前(name引数)
	layerName=nil, -- グループマネージャの各レイヤーの名前
	x=nil,
	y=nil,
	x2=nil,
	y2=nil,
	movX=nil,
	movY=nil,
	w=nil,
	h=nil,
	raidus=nil,
	angle=nil,
	xScale=nil,
	yScale=nil,
	file=nil,
	alpha=nil,
	color={r=nil,g=nil,b=nil},
	refX=nil, -- left,center,right
	refY=nil, -- top,center,bottom
	text=nil,
	fontName=nil,
	fontSize=nil,
	stroke={r=nil,g=nil,b=nil,width=nil},
	visible=nil,
	imgSheetOpt=nil, --イメージシートを作る際のオプション ファイルはfileオプションを用いてイメージシートが作成される
	additionalTable=nil,
	eventsArray=nil,
	onInitialize=nil,
	initializeTable=nil,
	onLoaded=nil,
	loadedTable=nil
}

return displayComponentDefaults