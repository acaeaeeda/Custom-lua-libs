# 简介
[en_us](https://github.com/acaeaeeda/Custom-lua-libs/blob/e415002ae007fc2c4e8d9ea90c22d9d1443fb2d8/en_us/farmerUtils/README.md)<br>
Farmer Utils 为使用 CC:T 海龟(turtle)提供了一些管理农田的方法.<br>
Version: `0.2.2`

## 提示
- 配置文件(`dataManager.lua`)必须与LIB本体(`farmerutils.lua`)放在同级文件夹下.
- 此文档将始终与最新版保持一致.<br>

## 延伸阅读
[如何编辑配置文件](https://github.com/acaeaeeda/Custom-lua-libs/blob/ae908019403f943ec8ac7c350395b2a574457d8d/farmerUtils/Configurations.md)

# 定义的方法
## canReap() -> boolean
**简介：**
根据配置文件的信息检测海龟下方的作物是否可被收获.<br>
**参数：** 无参数.<br>
**返回值：**
- boolean,`true`或`false`.<br>

## canPlant() -> boolean
**简介：**
检测海龟下方的方块是否为空.<br>
**参数：** 无参数.<br>
**返回值：**
- boolean,`true`或`false`.<br>


## isSeed(_slot) -> boolean
**简介：**
根据配置文件的信息检测指定物品栏中的物品是否可以被作为种子种植.<br>
**参数：**
- _slot:number,指定要检测的物品栏下标，值域为区间`[1-16]`中的所有整数.<br>

**返回值：**
- boolean,`true`或`false`.


## asSeed() -> string/nil
**简介：**
根据配置文件的信息检测海龟下方的作物，并将其`方块ID`转化为对应的种子`物品ID`，若转化失败则返回`nil`.<br>
**参数：** 无参数.<br>
**返回值：**
- string/nil,转化成功返回string，否则返回nil.<br>