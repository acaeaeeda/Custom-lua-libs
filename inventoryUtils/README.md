# 简介
[en_us](https://github.com/acaeaeeda/Custom-lua-libs/blob/6d1cb1dd7d105a4ea820e74acc3f072d44575a0d/en_us/inventoryUtils/README.md)<br>
Inventory Utils 为管理 CC:T 海龟(turtle)的物品栏提供了一些便捷的方法.<br>
Version: `0.2.0`

## 提示
- 不支持物品标签(tag).
- 此文档将始终与最新版保持一致.

# 定义的方法
## itemMatcher(itemId,slot) -> boolean
**简介：**
检测指定物品栏中的物品是否与参数指定的物品匹配.<br>
**参数：**
1. itemId: string,指定所要匹配的物品ID. e.g. `"minecraft:tnt"`.<br>
2. slot: number,指定要检测的物品栏下标，值域为区间`[1-16]`中的所有整数，设为`-1`则检测当前选择的物品栏.<br>

**返回值：**
- boolean,若匹配则返回`true`，否则返回`false`.<br>


## itemScanner(itemId,select) -> number
**简介：**
扫描整个物品栏，返回首个匹配的物品栏的下标，若没有匹配的物品栏则返回`-1`.<br>
**参数：**
1. itemId: string,指定所要匹配的物品ID. e.g. `"minecraft:tnt"`.<br>
2. select: boolean,指定是否要切换选择的物品栏.<br>

**返回值：**
- number,返回首个匹配的物品栏的下标，值域为区间`[1-16]`中的所有整数，若没有匹配的物品栏则返回`-1`.<br>



## itemScanner2(itemId) -> table
**简介：**
扫描整个物品栏，返回一个包含所有匹配的物品栏列表.<br>
**参数：**
- itemId: string,指定所要匹配的物品ID. e.g. `"minecraft:tnt"`.<br>

**返回值：**
- table,包含所有匹配的物品栏的下标列表.<br>


## getTotalCount(itemId) -> number
**简介：**
扫描整个物品栏，返回所有匹配的物品的总数.<br>
**参数：**
- itemId: string,指定所要匹配的物品ID. e.g. `"minecraft:tnt"`.<br>

**返回值：**
- number,包含所有匹配的物品的数量.<br>


## dropAll(itemId) -> number
**简介：**
扫描整个物品栏，将所有匹配的物品扔出在turtle前部并返回所有匹配的物品的总数.<br>
**参数：**
- itemId: string,指定所要匹配的物品ID. e.g. `"minecraft:tnt"`.<br>

**返回值：**
- number,包含所有匹配的物品的数量.<br>


## getEmptySlots() -> number,table
**简介：**
扫描整个物品栏，返回所有空物品栏的总数和包括了所有具体下标的列表的表.<br>
**参数：** 无参数.<br>

**返回值：**
1. number,所有空物品栏的总数.<br>
2. table,所有具体下标的列表的表.  e.g. `{1,5,6}`.