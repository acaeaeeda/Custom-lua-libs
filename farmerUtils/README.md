# 简介
[en_us](https://github.com/acaeaeeda/Custom-lua-libs/blob/e415002ae007fc2c4e8d9ea90c22d9d1443fb2d8/en_us/farmerUtils/README.md)<br>
Farmer Utils 为使用 CC:T 海龟(turtle)提供了一些~~目前只有一个~~管理农田的方法.<br>
Version: `0.0.4`

## 提示
- 配置文件(`dataManager.lua`)必须与LIB本体(`farmerutils.lua`)放在同级文件夹下.
- 此文档将始终与最新版保持一致.<br>

## 延伸阅读
[如何编辑配置文件](https://github.com/acaeaeeda/Custom-lua-libs/blob/ae908019403f943ec8ac7c350395b2a574457d8d/farmerUtils/Configurations.md)

# 定义的方法
## canReap() -> boolean
**简介：**
根据配置文件的信息检测海龟下方的作物是否可被收获.<br>
**参数：**
无参数.<br>
**返回值：**
- boolean,`true`或`false`.

