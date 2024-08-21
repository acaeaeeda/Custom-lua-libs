-- Utils for items.
print("ItemUtils: Use 'menu' to get help menu.")
local function menu()
    -- Please update the table manually.
    local funcT = {}
    funcT["menu"] = "Print this table."
    funcT["itemScanner"] = "Params:(itemId:string)Scan turtle's inventory by given itemid,\nreturns the first matched slot;return -1 if find nothing."
    funcT["getTotualCount"] = "Params:(item:string)Returns totual item by given id."
    -- Print the table
    for k,v in pairs(funcT) do
        print(k," --- ",v)
    end
end
-- A function searchs item in turtle's inventory.
local function itemScanner(itemId)
    for _ = 1,16 do
        -- Change the selected slot
        turtle.select(_)
        local currentItem = turtle.getItemDetail(_)
        if currentItem then
            local _itemId = currentItem["name"]
            if _itemId == itemId then
                -- Return the slot number
                return _
            end
        end
        
    end  
    -- Return -1 if find nothing.
    return -1    
end
        

-- A function returns the totual amount of item in turtle's inventory.
local function getTotualCount(item)
    local count = 0
    local slot = turtle.getSelectedSlot()
    for _=1,16 do
        -- Change the seleted slot
        turtle.select(_)
        local _item = turtle.getItemDetail()
        if _item then
            if _item["name"] == item then
                count = count + turtle.getItemCount(_)
            end
        end
    end
    -- Reset the seleted slot.
    turtle.select(slot)
    -- Return.
    return count
end
        


-- Return functions.
return {menu = menu,itemScanner = itemScanner,getTotualCount = getTotualCount}
