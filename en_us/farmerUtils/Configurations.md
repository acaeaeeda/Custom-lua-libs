# Configure dataManager

## Notes
- This file is the configuration file for the core of the LIB `famerutils`. By default, it must be placed in the same directory or it cannot be loaded correctly.
- Please do not delete the `return` at the end of the file.
- This document is translated by Tiangong AI.

## Configurations
To add configurations for a new crop (block,  for example `"minecraft:carrots"`), follow these steps:

1. Add the modid, perform this operation only once for each modid.<br>
   ```crops.modid = {}```<br>
Here, it would be:<br>
   ```crops.minecraft = {}```<br>

1. Add the crop block and block information.<br>
   ```crops.modid.blockid_without_modid = {harvest_age,"seed_itemid_without_modid"}```<br>
Here, it would be:<br>
   ```crops.minecraft.carrots = {7,"carrot"}```<br>

1. It's recommended to run it once after editing to ensure there are no errors before saving the file.