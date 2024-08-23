local crops = require("dataManager")



local function nameSpliter(text)
    local marker = string.find(text,":")
    local modid = string.sub(text,1,marker-1)
    local name = string.sub(text,marker+1,string.len(text))
    return modid,name
end


local function canReap()
    local k,block = turtle.inspectDown()
    if k then
        local modid,name = nameSpliter(block.name)
        if crops[modid] then
            if crops[modid][name] then
                return crops[modid][name][0] == block.state.age
            end
        end
    end
                    
end



-- test
print(canReap())


-- Return
return {
    canReap = canReap
}

