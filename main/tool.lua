local tool = {}

function tool.read_exp_list(s)
	local exps, res = {}, {}
	local function save(v)
		exps[#exps + 1] = v
		return ('\0'):rep(#exps)
	end
	s = s:gsub('%b{}', function(s) return save{tool.read_exp_list(s:sub(2, -2))} end) -- arrays
	s = s:gsub('"(.-)"', save)                                                   -- strings
	s = s:gsub('%-?%d+', function(s) return save(tonumber(s)) end)               -- integer numbers
	for k in s:gmatch'%z+' do
		if exps[#k] == "<null>" then 
			exps[#k] = nil
		end
		res[#res + 1] = exps[#k]
	end
	return (table.unpack or unpack)(res)
end

return tool