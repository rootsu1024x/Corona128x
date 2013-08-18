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
	stroke={color={r=nil,g=nil,b=nil,a=nil},width=nil},
	visible=nil,
	imgSheetOpt=nil, --イメージシートを作る際のオプション ファイルはfileオプションを用いてイメージシートが作成される
	isPhysics=nil,
	physicsSpec={
		type=nil,
		density=nil,
		friction=nil,
		bounce=nil,
		shapeType=nil,
		radius=nil,
		shape=nil,
		isComplex=nil,
		complex=nil,-- isComplexがtrueのときに使用 複合物理オブジェクトを指定できる
	},
	additionalTable=nil,
	eventsTable=nil,
}

return displayComponentDefaults