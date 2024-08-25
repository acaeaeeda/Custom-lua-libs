--[[
    Utils for turtle's inventory.
    Version: 0.1.0
    Author: github.com/acaeaeeda (Acaeaeeda)
    Link: https://github.com/acaeaeeda/Custom-lua-libs for detailed information.
]]



local function itemMatcher(itemId,slot)
    if slot == -1 then
        slot = turtle.getSelectedSlot()
    end
    -- Get detailed item information.
    local _item = turtle.getItemDetail(slot)
    if _item then
        return _item["name"] == itemId
    else
        return false
    end
end



local function itemScanner(itemId,select)
    for _ = 1,16 do
        if itemMatcher(itemId,_) then
                if select then
                    -- Change the selected slot
                    turtle.select(_)
                end
                -- Return the slot number
                return _
        end
    end
    -- Return -1 if nothing is found.
    return -1
end



local function itemScanner2(itemId)
    local results = {}
    for _ = 1,16 do
        if itemMatcher(itemId,_) then
                table.insert(results,_)
        end
    end
    -- Return {} if nothing is found.
    return results
end



local function getTotalCount(itemId)
    local count = 0
    for _=1,16 do
        if itemMatcher(itemId,_) then
                count = count + turtle.getItemCount(_)
        end
    end
    -- Return.
    return count
end



local function dropAll(itemId)
    local amount = getTotalCount(itemId)
    -- Select and drop.
    if amount > 0 then
        for _=1,16 do
            if itemMatcher(itemId,_) then
                turtle.select(_)
                turtle.drop(turtle.getItemCount(turtle.getSelectedSlot()))
            end
        end
    end
    return amount
end



-- Return functions.
return {
    itemMatcher = itemMatcher,
    itemScanner = itemScanner,
    itemScanner2 = itemScanner2,
    getTotalCount = getTotalCount,
    dropAll = dropAll
}

