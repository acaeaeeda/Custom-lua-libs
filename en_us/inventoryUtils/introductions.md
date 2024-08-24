# Introduction
Inventory Utils provides some convenient methods for managing the inventory of CC:T turtles.<br>
Version: `0.1.0`

## Notes
- Does not support item tags (tag).
- This document will always be consistent with the latest version.
- This document is translated by Tiangong AI.

# Methods
## itemMatcher(itemId, slot) -> boolean
**Introduction:**
Checks if the item in the specified inventory slot matches the item specified by the parameters.<br>
**Parameters:**
- itemId: string, specifies the item ID to be matched. e.g. `"minecraft:tnt"`.
- slot: number, specifies the index of the inventory slot to be checked, the valid range is all integers in the interval `[1-16]`, set to `-1` to check the currently selected inventory slot.

**Return Value:**
- boolean, returns `true` if a match is found, otherwise returns `false`.

## itemScanner(itemId, select) -> number
**Introduction:**
Scans the entire inventory, returns the index of the first matching inventory slot, returns `-1` if no matching slot is found.<br>
**Parameters:**
- itemId: string, specifies the item ID to be matched. e.g. `"minecraft:tnt"`.
- select: boolean, specifies whether to switch the selected inventory slot.

**Return Value:**
- number, returns the index of the first matching inventory slot, the valid range is all integers in the interval `[1-16]`, returns `-1` if no matching inventory slot is found.

## itemScanner2(itemId) -> table
**Introduction:**
Scans the entire inventory, returns a list containing all matching inventory slots.<br>
**Parameters:**
- itemId: string, specifies the item ID to be matched. e.g. `"minecraft:tnt"`.

**Return Value:**
- table, a list containing the indices of all matching inventory slots.

## getTotalCount(itemId) -> number
**Introduction:**
Scans the entire inventory, returns the total number of matching items.<br>
**Parameters:**
- itemId: string, specifies the item ID to be matched. e.g. `"minecraft:tnt"`.

**Return Value:**
- number, the total quantity of all matching items.

## dropAll(itemId) -> number
**Introduction:**
Scans the entire inventory, drops all matching items in front of the turtle, and returns the total number of matching items.<br>
**Parameters:**
- itemId: string, specifies the item ID to be matched. e.g. `"minecraft:tnt"`.

**Return Value:**
- number, the total quantity of all matching items.