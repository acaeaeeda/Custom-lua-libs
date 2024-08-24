# 简介
Inventory Utils 是为管理 CC:T 海龟(turtle)的物品栏提供了一些便捷的方法.<br>
Version: `0.1.0`

## 提示
- 不支持物品标签(tag).

## 使用方法
使用 `require("invutils")` 导入.

# 定义的方法<br>
## itemMatcher(itemId,slot) -> boolean
**参数：**
- itemId: string,指定所要匹配的物品ID. e.g. `"minecraft:tnt"`.
- slot: number,指定要检测的物品栏序号，值域为区间`[1-16]`中的所有整数，设为`-1`则检测当前选择的物品栏.

**返回值：**
- boolean,若匹配则返回`true`，否则返回`false`.


## itemScanner(itemId,select) -> number
**参数：**
- itemId: string,指定所要匹配的物品ID. e.g. `"minecraft:tnt"`.
- select: boolean,指定是否要切换选择的物品栏.

**返回值：**
- number,返回首个匹配的物品栏的下标，值域为区间`[1-16]`中的所有整数，若没有匹配的物品栏则返回`-1`.



## itemScanner2(itemId) -> table
**参数：**
- itemId: string,指定所要匹配的物品ID. e.g. `"minecraft:tnt"`.

**返回值：**
- table,包含所有匹配的物品栏的下标的列表.
