-- Utils for items.
print("ItemUtils: Use 'menu()' to list functions.")

local function menu()
    -- Please update the table manually.
    local funcT = {}
    funcT["menu"] = "Params:(nil) Returns:(nil)."
    funcT["itemScanner"] = "Params:(itemId:string,select:bool) Returns:(number)."
    funcT["itemScanner2"] = "Params:(itemId:string) Returns:(table[A list of numbers])."
    funcT["getTotualCount"] = "Params:(itemId:string) Returns:(number)."
    funcT["itemMatcher"] = "Params:(itemId:string,slot:number[1-16]) Returns:(bool)."
    funcT["dorpAll"] = "Params:(itemId:string) Returns:(number)."
    -- Print the table
    for k,v in pairs(funcT) do
        print(k , " --- " , v)
    end
end


--[[
    A function matches items based on the given slot,returning true if matched.
]]
local function itemMatcher(itemId,slot)
    local _item = turtle.getItemDetail(slot)
    if _item then
        return _item["name"] == itemId
    else
        return false
    end
end



--[[
    A function scans the turtle's inventory for a specified item ID, 
returning the slot of the first match; it returns -1 if nothing is found.
    Select the matched slot if enabled.
]]
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
    -- Returns -1 if nothing is found.
    return -1
end



--[[
    A function scans the turtle's inventory for a specified item ID, 
returning a table containing a list of matched slot.
]]
local function itemScanner2(itemId)
    local results = {}
    for _ = 1,16 do
        if itemMatcher(itemId,_) then
                table.insert(results,_)
        end
    end
    -- Returns {} if nothing is found.
    return results
end



--[[
    A function returns the number of items in turtle's inventory.
]]
local function getTotualCount(itemId)
    local count = 0
    for _=1,16 do
        if itemMatcher(itemId,_) then
                count = count + turtle.getItemCount(_) 
        end
    end
    -- Return.
    return count
end

--[[
    A function Drops all items in the turtle's inventory that match the given ID,
dropping the items in front of the turtle, 
and returns the number of items that would be dropped.
]]
local function dropAll(itemId)
    local amount = getTotualCount(itemId)
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
return {menu = menu,itemMatcher = itemMatcher,itemScanner = itemScanner,itemScanner2 = itemScanner2,getTotualCount = getTotualCount,dropAll = dropAll}
