local inheritancer = {}

--Thanks to : lua-users wiki: Copy Table - http://lua-users.org/wiki/CopyTable
local function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

inheritancer.override = function(super,sub)
	local derived = deepcopy(super)
	for k,v in pairs(sub) do
		derived[k] = v
	end
	return derived
end

return inheritancer
