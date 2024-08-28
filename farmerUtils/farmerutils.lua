--[[
    Utils for farmer turtle.
    Version: 0.2.2
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



local function len(_table)
    local lenght = 0
    for key, value in pairs(_table) do
        lenght  = lenght +1
    end
    return lenght
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


local function isSeed(_slot)
    local _item = turtle.getItemDetail(_slot)
    if _item then
        local modid,name = nameSpliter(_item.name)
        for _modid,_table in pairs(crops) do
            if len(_table) > 0 then
                for _name, values in pairs(_table) do
                    if nameSplicer(_modid,_table[_name][2]) == _item.name then
                        return true
                    end
                end
            end
        end
        return false
    end
    return false
end



local function asSeed()
    local hasBlock,block = turtle.inspectDown()
    if hasBlock then
        local modid,name  = nameSpliter(block.name)
        for _modid,_table in pairs(crops) do
            if len(_table) > 0 then
                if modid == _modid and crops[modid][name] then
                    return nameSplicer(modid,_table[name][2])
                end
            end
        end
        return nil
    end
    return nil
end


-- Return
return {
    canReap = canReap,
    canPlant = canPlant,
    isSeed = isSeed,
    asSeed = asSeed
}

