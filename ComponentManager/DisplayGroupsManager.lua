local displayGroupsManager = {}

displayGroupsManager.sets = {}

local function newDisplayGroup(parent,name,groupSpec)
	local group = {}
	for i = 1, table.maxn(groupSpec) do
		group[groupSpec[i]] = display.newGroup()
		parent:insert(group[groupSpec[i]])
	end
	displayGroupsManager.sets[name] = group
end

displayGroupsManager.new = newDisplayGroup

return displayGroupsManager