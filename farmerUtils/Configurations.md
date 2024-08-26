# 配置 dataManager
[en_us](https://github.com/acaeaeeda/Custom-lua-libs/blob/abf86cf3c57c4cb4fee07d2d525d797b14882e01/en_us/farmerUtils/Configurations.md)
## 注意事项
- 此文件是LIB `famerutils` 本体的配置文件，默认必须与其放在同级文件夹内，否则无法正常加载.
- 注意请勿删除文件末尾处的`return`.
## 配置
若要新添作物(方块，以作物`"minecraft:carrots"`为例)信息，请按如下步骤操作：
1. 添加modid，对于每个modid只进行一次此操作.<br>
``crops.modid = {}``.<br>
在此处即为：``crops.minecraft = {}``.<br>
2. 添加作物方块和方块信息.<br>
``crops.modid.blockid_without_modid = {harvest_age,"seed_itemid_without_modid"}``.<br>
在此处即为：``crops.minecraft.carrots = {7,"carrot"}``.<br>
3. 建议编辑完成后运行一次，确保无报错后保存文件.