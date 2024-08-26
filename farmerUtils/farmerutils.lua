--[[
    Utils for farmer turtle.
    Version: 0.1.1
    Author: github.com/acaeaeeda (Acaeaeeda)
    Link: https://github.com/acaeaeeda/Custom-lua-libs for detailed information.
]]

local crops = require("dataManager")



local function nameSpliter(text)
    local marker = string.find(text,":")
    local modid = string.sub(text,1,marker-1)
    local name = string.sub(text,marker+1,string.len(text))
    return modid,name
end


local function nameSplicer(modid,_name)
    return string.format("%s:%s",modid,_name)
end


local function canReap()
    local k,block = turtle.inspectDown()
    if k then
        local modid,name = nameSpliter(block.name)
        if crops[modid] then
            if crops[modid][name] then
                return crops[modid][name][1] == block.state.age
            end
        end
        return false
    end
    return false
end


local function canPlant()
    local hasBlock,v = turtle.inspectDown()
    return hasBlock == false
end


local function isSeed()
    local _item = turtle.getItemDetail(turtle.getSelectedSlot())
    if _item then
        for modid,_name in pairs(crops) do
            if nameSplicer(modid,crops[modid][_name][2]) == _item.name then
                return true
            end
        end
        return false
    end
    return false
end


-- Return
return {
    canReap = canReap,
    canPlant = canPlant,
    isSeed = isSeed
}

